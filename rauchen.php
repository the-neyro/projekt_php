<?php
$page_title = "Rauchen";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}

require_once "db.php";
$con     = db();
$user_nr = (int) $_SESSION["user_id"];

if (isset($_POST["reset"])) {
    $stmt = mysqli_prepare($con, "DELETE FROM rauchen_frei WHERE user_nr = ?");
    mysqli_stmt_bind_param($stmt, "i", $user_nr);
    mysqli_stmt_execute($stmt);
    header("Location: rauchen.php");
    exit;
}

if (isset($_POST["datum"])) {
    $zeit              = $_POST["datum"];
    $anzahl_zigaretten = (int) $_POST["anzahl"];
    $preis             = (float) $_POST["preis"];

    $stmt = mysqli_prepare($con, "SELECT user_nr FROM rauchen_frei WHERE user_nr = ?");
    mysqli_stmt_bind_param($stmt, "i", $user_nr);
    mysqli_stmt_execute($stmt);
    $check = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($check) < 1) {
        $stmt = mysqli_prepare($con, "INSERT INTO rauchen_frei(user_nr, aufhoeren_zeit, zigaretten_pro_tag, packung_kostet) VALUES(?, ?, ?, ?)");
        mysqli_stmt_bind_param($stmt, "isid", $user_nr, $zeit, $anzahl_zigaretten, $preis);
        mysqli_stmt_execute($stmt);
    } else {
        $stmt = mysqli_prepare($con, "UPDATE rauchen_frei SET aufhoeren_zeit = ?, zigaretten_pro_tag = ?, packung_kostet = ? WHERE user_nr = ?");
        mysqli_stmt_bind_param($stmt, "sidi", $zeit, $anzahl_zigaretten, $preis, $user_nr);
        mysqli_stmt_execute($stmt);
    }

    header("Location: rauchen.php");
    exit;
}

$stmt = mysqli_prepare($con, "SELECT aufhoeren_zeit, zigaretten_pro_tag, packung_kostet FROM rauchen_frei WHERE user_nr = ? LIMIT 1");
mysqli_stmt_bind_param($stmt, "i", $user_nr);
mysqli_stmt_execute($stmt);
$res  = mysqli_stmt_get_result($stmt);
$data = mysqli_fetch_assoc($res);

// 2 Var deklarieren, um fehler zu vermeiden 
$days = null;
$geld = null;

if ($data) {
    $zeit = $data["aufhoeren_zeit"];
    $preis = (float)$data["packung_kostet"];

    $var = time() - strtotime($zeit);
    $days = max(0, floor($var / 86400));
    $geld = $days * $preis; 
}
?>

<div class="container">
    <h1>Ich rauche nicht mehr!</h1>
    <p class="small">Setze dein Startdatum und sieh, wie lange du schon rauchfrei bist.</p>

    <div class="dash">
        <div class="card">
            <h2 style="margin-top:0;">Einstellungen</h2>

            <form action="#" method="POST" style="display:grid; gap:12px; max-width:520px;">
                <div>
                    <label class="small">Seit wann?</label><br>
                    <input type="date" required name="datum" style="width:100%;"
                           value="<?= $data ? htmlspecialchars($data["aufhoeren_zeit"]) : "" ?>">
                </div>

                <div>
                    <label class="small">Wie viele Zigaretten pro Tag?</label><br>
                    <input type="number" required name="anzahl" min="0" style="width:100%;"
                           value="<?= $data ? (int)$data["zigaretten_pro_tag"] : 0 ?>">
                </div>

                <div>
                    <label class="small">Packung kostet (€)</label><br>
                    <input type="number" required name="preis" step="0.01" min="0" style="width:100%;"
                           value="<?= $data ? htmlspecialchars($data["packung_kostet"]) : 0 ?>">
                </div>

                <div>
                    <input type="submit" value="Speichern">
                </div>
            </form>

            <?php if ($data): ?>
                <hr style="border:none; border-top:1px solid var(--line); margin:18px 0;">

                <h2>Deine Statistik</h2>

                <div style="display:grid; gap:12px; grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)); margin-top:10px;">
                    <div style="border:1px solid var(--line); padding:12px; ">
                        <div class="small">Rauchfrei</div>
                        <div style="font-size:22px; font-weight:700;">
                            <?php
                            echo "$days Tag";
                            if ($days > 1) { echo "e"; }
                            ?>
                        </div>
                    </div>

                    <div style="border:1px solid var(--line); padding:12px; ">
                        <div class="small">Geld gespart</div>
                        <div style="font-size:22px; font-weight:700;">
                            <?= number_format((float)$geld, 2, ",", ".") ?> €
                        </div>
                    </div>
                </div>

                <div style="margin-top:14px;">
                    <form action="#" method="POST">
                        <button type="submit" name="reset" value="1">Rückfall – Neu starten</button>
                    </form>
                </div>
            <?php else: ?>
                <p class="small" style="margin-top:14px;">
                    Noch keine Daten gespeichert. Bitte zuerst Startdatum eintragen.
                </p>
            <?php endif; ?>

        </div>
    </div>
</div>

<?php include("footer.php"); ?>

<?php
$page_title = "Benutzer Auswahl";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}

require_once "db.php";
$con     = db();
$user_id = (int) $_SESSION["user_id"];
?>

<h1>Deine Aktivitäten</h1>
<p class="small">Hier siehst du alle Aktivitäten, die du ausgewählt hast.</p>

<div class="dash">
  <div class="card">

<?php
$stmt = mysqli_prepare($con, "SELECT aktiv_nr, beschreibung
                               FROM benutzer_auswahl
                               JOIN aktivitaeten ON aktiv_nr = aktiv_id
                               WHERE user_nr = ?");
mysqli_stmt_bind_param($stmt, "i", $user_id);
mysqli_stmt_execute($stmt);
$erg = mysqli_stmt_get_result($stmt);

$hasAny = false;

while ($row = mysqli_fetch_assoc($erg)) {
    $aktiv_nr    = (int) $row["aktiv_nr"];
    $beschreibung = htmlspecialchars($row["beschreibung"]);

    if ($aktiv_nr === 1) {
        $check_stmt = mysqli_prepare($con, "SELECT 1 FROM meditation_umsetzung WHERE user_nr = ? LIMIT 1");
        $link = "meditation_benutzer.php";
    } elseif ($aktiv_nr === 2) {
        $check_stmt = mysqli_prepare($con, "SELECT 1 FROM sportzuhause_umsetzung WHERE user_nr = ? LIMIT 1");
        $link = "sportzuhause_benutzer.php";
    } elseif ($aktiv_nr === 3) {
        $check_stmt = mysqli_prepare($con, "SELECT 1 FROM mehrlesen_umsetzung WHERE user_nr = ? LIMIT 1");
        $link = "mehrlesen_benutzer.php";
    } else {
        continue;
    }

    mysqli_stmt_bind_param($check_stmt, "i", $user_id);
    mysqli_stmt_execute($check_stmt);
    $check = mysqli_stmt_get_result($check_stmt);

    if (mysqli_num_rows($check) > 0) {
        $hasAny = true;
        echo "<div class='card' style='margin-bottom:16px'>";
        echo "<strong>" . ucwords($beschreibung) . "</strong><br><br>";
        echo "<a class='btn' href='{$link}'>Öffnen</a> ";
        echo "<a class='btn danger' href='benutzer_aktiv_delete.php?id={$aktiv_nr}'>Löschen</a>";
        echo "</div>";
    }
}

if (!$hasAny) {
    echo "<p>Noch keine Aktivitäten ausgewählt.</p>";
}
?>

    <p class="small">
      <a class="link" href="dashboard.php">← Zurück zum Dashboard</a>
    </p>

  </div>

  <div class="heroimg selection"></div>
</div>

<?php include("footer.php"); ?>

<?php
$page_title = "Meditation löschen";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}

require_once "db.php";
$con       = db();
$user_id   = (int) $_SESSION["user_id"];
$uebung_id = isset($_GET["id"]) ? (int) $_GET["id"] : null;

if (isset($_POST["delete"]) && $uebung_id !== null) {

    $stmt = mysqli_prepare($con, "DELETE FROM meditation_umsetzung WHERE uebung_id = ? AND user_nr = ?");
    mysqli_stmt_bind_param($stmt, "ii", $uebung_id, $user_id);
    mysqli_stmt_execute($stmt);

    $stmt = mysqli_prepare($con, "SELECT 1 FROM meditation_umsetzung WHERE user_nr = ? LIMIT 1");
    mysqli_stmt_bind_param($stmt, "i", $user_id);
    mysqli_stmt_execute($stmt);
    $erg = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($erg) < 1) {
        $stmt = mysqli_prepare($con, "DELETE FROM benutzer_auswahl WHERE aktiv_nr = 1 AND user_nr = ?");
        mysqli_stmt_bind_param($stmt, "i", $user_id);
        mysqli_stmt_execute($stmt);
        header("Location: benutzer_auswahl.php");
        exit;
    }

    header("Location: meditation_benutzer.php");
    exit;
}
?>

<h1>Meditation löschen</h1>
<p class="small">Willst du diese Übung wirklich entfernen?</p>

<div class="dash">
  <div class="card">
    <p><strong>Hinweis:</strong> Diese Meditationsübung wird dauerhaft gelöscht.</p>

    <form action="#" method="post" style="text-align:center;">
      <button class="btn danger" type="submit" name="delete">Löschen</button>
    </form>

    <p class="small">
      <a class="link" href="meditation_benutzer.php">← Abbrechen</a>
    </p>
  </div>

  <div class="heroimg dangerimg">?</div>
</div>

<?php include("footer.php"); ?>

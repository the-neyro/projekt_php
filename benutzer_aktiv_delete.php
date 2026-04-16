<?php
$page_title = "Aktivität löschen";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}

require_once "db.php";
$con      = db();
$user_nr  = (int) $_SESSION["user_id"];
$aktiv_nr = isset($_GET["id"]) ? (int) $_GET["id"] : null;

if (isset($_POST["delete_aktiv"]) && $aktiv_nr !== null) {

    $stmt = mysqli_prepare($con, "DELETE FROM benutzer_auswahl WHERE aktiv_nr = ? AND user_nr = ?");
    mysqli_stmt_bind_param($stmt, "ii", $aktiv_nr, $user_nr);
    mysqli_stmt_execute($stmt);

    if ($aktiv_nr === 1) {
        $stmt = mysqli_prepare($con, "DELETE FROM meditation_umsetzung WHERE user_nr = ?");
        mysqli_stmt_bind_param($stmt, "i", $user_nr);
        mysqli_stmt_execute($stmt);
    }
    if ($aktiv_nr === 2) {
        $stmt = mysqli_prepare($con, "DELETE FROM sportzuhause_umsetzung WHERE user_nr = ?");
        mysqli_stmt_bind_param($stmt, "i", $user_nr);
        mysqli_stmt_execute($stmt);
    }
    if ($aktiv_nr === 3) {
        $stmt = mysqli_prepare($con, "DELETE FROM mehrlesen_umsetzung WHERE user_nr = ?");
        mysqli_stmt_bind_param($stmt, "i", $user_nr);
        mysqli_stmt_execute($stmt);
    }

    header("Location: benutzer_auswahl.php");
    exit;
}
?>

<h1>Aktivität löschen</h1>
<p class="small">Willst du die Aktivität wirklich aus deiner Auswahl entfernen?</p>

<div class="dash">
  <div class="card">
    <p><strong>Achtung:</strong> Dabei werden auch deine gespeicherten Übungen dazu gelöscht.</p>

    <form action="#" method="post" style="text-align:center;">
      <button class="btn danger" type="submit" name="delete_aktiv">Löschen</button>
    </form>

    <p class="small">
      <a class="link" href="benutzer_auswahl.php">← Abbrechen</a>
    </p>
  </div>

  <div class="heroimg dangerimg">?</div>
</div>

<?php include("footer.php"); ?>

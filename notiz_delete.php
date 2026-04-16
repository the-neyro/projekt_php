<?php
$page_title = "Notiz löschen";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}

$notiz_id = (int) $_GET["id"];
$user_id  = $_SESSION["user_id"];

if (isset($_POST["delete"])) {
    require_once "db.php";
    $con = db();

    // Nur löschen wenn die Notiz dem eingeloggten User gehört
    $stmt = mysqli_prepare($con, "DELETE FROM notizen WHERE notiz_id = ? AND user_nr = ?");
    mysqli_stmt_bind_param($stmt, "ii", $notiz_id, $user_id);
    mysqli_stmt_execute($stmt);

    header("Location: notizen.php");
    exit;
}
?>

<div class="dash">
  <div class="card">
    <h1>Wollen Sie die Notiz wirklich löschen?</h1>
    <p class="small">Diese Aktion kann nicht rückgängig gemacht werden.</p>

    <form action="#" method="post" style="text-align:center;">
      <button class="btn" type="submit" name="delete">Löschen</button>
    </form>

    <p class="small"><a class="link" href="notizen.php">← Zurück</a></p>
  </div>

  <div class="heroimg dangerimg">?</div>
</div>

<?php include("footer.php"); ?>

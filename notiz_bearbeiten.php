<?php
$page_title = "Notiz bearbeiten";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}

require_once "db.php";
$con      = db();
$user_id  = $_SESSION["user_id"];
$notiz_id = (int) $_GET["id"];

// Notiz laden — nur wenn sie dem eingeloggten User gehört
$stmt = mysqli_prepare($con, "SELECT text FROM notizen WHERE notiz_id = ? AND user_nr = ?");
mysqli_stmt_bind_param($stmt, "ii", $notiz_id, $user_id);
mysqli_stmt_execute($stmt);
$erg = mysqli_stmt_get_result($stmt);
$alte_notiz = mysqli_fetch_assoc($erg);

if (!$alte_notiz) {
    header("Location: notizen.php");
    exit;
}

// Notiz speichern
if (isset($_POST["notiz_bearb"])) {
    $notiz = $_POST["notiz_bearb"];
    $zeit  = date("Y-m-d H:i:s");

    $stmt = mysqli_prepare($con, "UPDATE notizen SET text = ?, zeit = ? WHERE notiz_id = ? AND user_nr = ?");
    mysqli_stmt_bind_param($stmt, "ssii", $notiz, $zeit, $notiz_id, $user_id);
    mysqli_stmt_execute($stmt);

    header("Location: notizen.php");
    exit;
}

$text_escaped = htmlspecialchars($alte_notiz['text']);
?>

<div class="dash">
  <div class="card">
    <h1>Notiz bearbeiten</h1>
    <form action="#" method="post">
      <textarea name="notiz_bearb" rows="2" cols="55"><?php echo $text_escaped; ?></textarea>
      <br><br>
      <button class="btn" type="submit">Speichern</button>
    </form>
    <p class="small"><a class="link" href="notizen.php">← Zurück</a></p>
  </div>
  <div class="heroimg editnote"></div>
</div>

<?php include("footer.php"); ?>

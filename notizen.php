<?php
$page_title = "Notizen";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}

require_once "db.php";
$con     = db();
$user_id = $_SESSION["user_id"];

// Neue Notiz speichern
if (isset($_POST["text"]) && trim($_POST["text"]) !== "") {
    $notiz      = $_POST["text"];
    $notiz_time = date("Y-m-d H:i:s");

    $stmt = mysqli_prepare($con, "INSERT INTO notizen(user_nr, text, zeit) VALUES(?, ?, ?)");
    mysqli_stmt_bind_param($stmt, "iss", $user_id, $notiz, $notiz_time);
    mysqli_stmt_execute($stmt);
}

echo "<h1>Notizen</h1>";
?>

<div class="dash">
  <div class="card">

    <form action="#" method="post">
      <textarea name="text" id="notiz" placeholder="Schreibe eine kurze Notiz..."></textarea>
      <br><br>
      <button class="btn" type="submit">Notiz speichern</button>
    </form>

    <br>

    <?php
    $stmt = mysqli_prepare($con, "SELECT text, zeit, notiz_id FROM notizen WHERE user_nr = ? ORDER BY zeit DESC");
    mysqli_stmt_bind_param($stmt, "i", $user_id);
    mysqli_stmt_execute($stmt);
    $erg = mysqli_stmt_get_result($stmt);

    echo "<table class='table'>";
    while ($row = mysqli_fetch_assoc($erg)) {
        $text     = htmlspecialchars($row['text']);
        $zeit     = htmlspecialchars($row['zeit']);
        $notiz_id = (int) $row['notiz_id'];

        echo "<tr>";
        echo "<td class='small'>{$zeit}</td>";
        echo "<td>{$text}</td>";
        echo "<td class='actions'>
            <a href='notiz_bearbeiten.php?id={$notiz_id}'>Bearbeiten</a>
            <a href='notiz_delete.php?id={$notiz_id}'>Löschen</a>
        </td>";
        echo "</tr>";
    }
    echo "</table>";
    ?>

    <p class="small">
      <a class="link" href="dashboard.php">← Home</a>
    </p>

  </div>
</div>

<?php include("footer.php"); ?>

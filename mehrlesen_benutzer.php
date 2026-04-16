<?php
$page_title = "Mehr lesen – Deine Übungen";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}

require_once "db.php";
$con     = db();
$user_id = (int) $_SESSION["user_id"];
?>

<h1>Mehr lesen</h1>
<p class="small">Deine gespeicherten Lese-Übungen.</p>

<div class="dash">
  <div class="card">

<?php
$stmt = mysqli_prepare($con, "SELECT b.titel, b.beschreibung, mu.uebung_id
                               FROM mehrlesen_bd b
                               JOIN mehrlesen_umsetzung mu ON b.uebung_id = mu.uebung_id
                               WHERE mu.user_nr = ?");
mysqli_stmt_bind_param($stmt, "i", $user_id);
mysqli_stmt_execute($stmt);
$erg = mysqli_stmt_get_result($stmt);

if (mysqli_num_rows($erg) == 0) {
    echo "<p>Noch keine Lese-Übungen gespeichert.</p>";
}

while ($row = mysqli_fetch_assoc($erg)) {
    $titel        = htmlspecialchars($row["titel"]);
    $beschreibung = $row["beschreibung"];
    $uebung_id    = (int) $row["uebung_id"];

    echo "<details style='margin-bottom:16px'>";
    echo "<summary><strong>{$titel}</strong></summary>";
    echo "<p class='lyrics'><br>{$beschreibung}</p>";
    echo "<a class='btn danger' href='mehrlesen_delete_benutzer.php?id={$uebung_id}'>Löschen</a>";
    echo "</details>";
}
?>

    <p class="small">
      <a class="link" href="benutzer_auswahl.php">← Zurück</a>
    </p>

  </div>

  <div class="heroimg reading"></div>
</div>

<?php include("footer.php"); ?>

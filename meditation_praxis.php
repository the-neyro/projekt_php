<?php
$page_title = "Meditation – Praxis";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}

require_once "db.php";
$con       = db();
$nutzer_nr = (int) $_SESSION["user_id"];

if (isset($_POST["meditation"]) && isset($_POST["aktiv_nr"]) && !isset($_POST["sub_aktiv_nr"])) {
    $aktiv_nr = (int) $_POST["aktiv_nr"];
    $stmt = mysqli_prepare($con, "INSERT IGNORE INTO benutzer_auswahl(aktiv_nr, user_nr) VALUES(?, ?)");
    mysqli_stmt_bind_param($stmt, "ii", $aktiv_nr, $nutzer_nr);
    mysqli_stmt_execute($stmt);
}

if (isset($_POST["sub_aktiv_nr"])) {
    $uebung_id = (int) $_POST["sub_aktiv_nr"];
    $aktiv_nr  = (int) $_POST["aktiv_nr"];
    $stmt = mysqli_prepare($con, "INSERT IGNORE INTO meditation_umsetzung(aktiv_nr, uebung_id, user_nr) VALUES(?, ?, ?)");
    mysqli_stmt_bind_param($stmt, "iii", $aktiv_nr, $uebung_id, $nutzer_nr);
    mysqli_stmt_execute($stmt);
}
?>

<h1>Meditation – Praxis</h1>
<p class="small">Wähle eine Übung aus und speichere sie in deiner Auswahl.</p>

<div class="dash">
  <div class="card">

<?php
$stmt = mysqli_prepare($con, "SELECT uebung_id, titel, beschreibung FROM meditation_bd");
mysqli_stmt_execute($stmt);
$erg = mysqli_stmt_get_result($stmt);

while ($row = mysqli_fetch_assoc($erg)) {
    $titel        = htmlspecialchars($row["titel"]);
    $beschreibung = $row["beschreibung"];
    $uebung_id    = (int) $row["uebung_id"];

    echo "<details>";
    echo "<summary>{$titel}</summary>";
    echo "<p class='lyrics'>{$beschreibung}</p>";
    echo "<form method='post' style='text-align:center;'>";
    echo "<input type='hidden' name='sub_aktiv_nr' value='{$uebung_id}'>";
    echo "<input type='hidden' name='aktiv_nr' value='1'>";
    echo "<button class='btn' type='submit'>Speichern</button>";
    echo "</form>";
    echo "</details>";
}
?>

    <p class="small">
      <a class="link" href="meditation.php">← Zurück</a> ·
      <a class="link" href="dashboard.php">Main menu</a>
    </p>

  </div>

  <div class="heroimg meditation"></div>
</div>

<?php include("footer.php"); ?>

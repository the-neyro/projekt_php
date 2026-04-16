<?php
$page_title = "Aktivitäten";
include("header.php");

if (!isset($_SESSION["user_id"])){
    header("Location: anmelden.php");
    exit;
}
?>

<h1>Aktivitäten</h1>
<p class="small">Wähle eine Aktivität aus und starte mit der Praxis.</p>


   

<div class="dash">
  <div class="menu">
    <a href="meditation.php">Meditation</a>
    <a href="mehrlesen.php">Mehr lesen</a>
    <a href="sportzuhause.php">Sport zu Hause</a>
    <a class="link dash" href="dashboard.php">← Zurück</a>
  </div>
</div>

<?php include("footer.php"); ?>
    



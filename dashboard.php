<?php
$page_title = "Dashboard";
include("header.php");
?>


<?php


if (!isset($_SESSION["user_id"])){
    header("Location: anmelden.php");
    exit;
}
  $login_name = $_SESSION["username"];
    ?>
 <h1>Willkommen, <?php echo htmlspecialchars($login_name); ?></h1>

<div class = "dash container-wide">
  <div class = "menu">
      <a  href = 'aktivitaeten.php'> Aktivitäten </a>
      <a  href = 'benutzer_auswahl.php'> Benutzer Auswahl </a>
      <a  href = 'notizen.php'> Notizen </a>
      <a  href="rauchen.php">Nichtraucher-Tracker.</a>
      <a class = "danger" href = 'logout.php'>Log out</a>
  </div>

  <!--<div class = "heroimg"></div>-->
</div>

<?php include("footer.php"); ?>

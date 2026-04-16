<?php
$page_title = "Meditation";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}
?>

<h1>Meditation</h1>
<p class="small">Ruhe. Fokus. Klarheit.</p>

<div class="dash dash-wide">
  <div class="card">

    <p><strong>Was ist Meditation?</strong></p>
    <p>
      Meditation ist eine einfache Methode, um den Geist bewusst zu beruhigen
      und die Aufmerksamkeit auf den gegenwärtigen Moment zu richten.
      Meist konzentriert man sich dabei auf den eigenen Atem oder auf eine
      ruhige Wahrnehmung des Körpers.
    </p>

    <p>
      Meditation hat nichts mit Religion zu tun und erfordert keine
      Vorkenntnisse.
    </p>

    <p><strong>Warum ist Meditation sinnvoll?</strong></p>
    <ul>
      <li>ordnet Gedanken</li>
      <li>reduziert Stress</li>
      <li>verbessert Konzentration</li>
      <li>fördert bewussten Umgang mit Gedanken</li>
    </ul>

    <p>
      Schon wenige Minuten regelmäßig können einen positiven Effekt haben.
    </p>

    <p><strong>Für wen ist Meditation geeignet?</strong></p>
    <ul>
      <li>bei Stress oder innerer Unruhe</li>
      <li>bei Konzentrationsproblemen</li>
      <li>als ruhiger Ausgleich zum Alltag</li>
    </ul>

    <p>
      Es gibt kein richtig oder falsch – jeder meditiert auf seine eigene Weise.
    </p>

    <form action="meditation_praxis.php" method="post" style="text-align:center;">
      <input type="hidden" name="aktiv_nr" value="1">
      <button class="btn" type="submit" name="meditation">Let’s go</button>
    </form>

    <p class="small">
      <a class="link" href="aktivitaeten.php">← Zurück</a> ·
      <a class="link" href="dashboard.php">Main menu</a>
    </p>

  </div>

 
</div>

<?php include("footer.php"); ?>

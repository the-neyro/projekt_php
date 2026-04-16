<?php
$page_title = "Sport zu Hause";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}
?>

<h1>Sport zu Hause</h1>
<p class="small">Energie. Gesundheit. Fokus.</p>

<div class="dash">
  <div class="card">

    <p><strong>Was bedeutet „Sport zu Hause“?</strong></p>
    <p>
      Sport zu Hause bedeutet, sich regelmäßig zu bewegen, ohne ein Fitnessstudio
      oder spezielle Geräte zu benötigen. Die Übungen können im eigenen Tempo und
      an die eigene körperliche Verfassung angepasst werden.
    </p>
    <p>
      Es geht nicht um Leistung oder Perfektion, sondern darum, aktiv zu bleiben.
    </p>

    <p><strong>Warum ist Sport zu Hause sinnvoll?</strong></p>
    <p>Bewegung hat einen direkten Einfluss auf:</p>
    <ul>
      <li>körperliche Gesundheit</li>
      <li>Energielevel</li>
      <li>Konzentration</li>
      <li>mentale Ausgeglichenheit</li>
    </ul>
    <p>
      Schon kurze Trainingseinheiten können helfen, Verspannungen zu lösen und
      den Kreislauf in Schwung zu bringen.
    </p>

    <p><strong>Warum fällt es vielen schwer, regelmäßig Sport zu machen?</strong></p>
    <p>Häufige Gründe sind:</p>
    <ul>
      <li>wenig Zeit</li>
      <li>fehlende Motivation</li>
      <li>keine Lust auf Fitnessstudio</li>
    </ul>
    <p>
      Sport zu Hause senkt diese Hürden deutlich, da er flexibel, zeitsparend und
      jederzeit möglich ist.
    </p>

    <p><strong>Warum lohnt es sich als Gewohnheit?</strong></p>
    <ul>
      <li>stärkt den Körper</li>
      <li>verbessert die Haltung</li>
      <li>steigert das Wohlbefinden</li>
      <li>unterstützt einen aktiven Alltag</li>
    </ul>
    <p>
      Oft reichen schon 10–15 Minuten, um einen positiven Effekt zu spüren.
    </p>

    <form action="sportzuhause_praxis.php" method="post" style="text-align:center;">
      <input type="hidden" name="aktiv_nr" value="2">
      <button class="btn" type="submit" name="sportzuhause">Let’s go</button>
    </form>

    <p class="small">
      <a class="link" href="aktivitaeten.php">← Zurück</a> ·
      <a class="link" href="dashboard.php">Main menu</a>
    </p>

  </div>

  <div class="heroimg sport"></div>
</div>

<?php include("footer.php"); ?>

<?php
$page_title = "Mehr lesen";
include("header.php");

if (!isset($_SESSION["user_id"])) {
    header("Location: anmelden.php");
    exit;
}
?>

<h1>Mehr lesen</h1>
<p class="small">Wissen. Fokus. Ruhe.</p>

<div class="dash">
  <div class="card">

    <p><strong>Was bedeutet „mehr lesen“?</strong></p>
    <p>
      „Mehr lesen“ bedeutet, sich bewusst Zeit für das Lesen zu nehmen – unabhängig davon,
      ob es sich um Bücher, Artikel oder Fachtexte handelt. Lesen ist eine der einfachsten
      Möglichkeiten, Wissen zu erweitern und den eigenen Horizont zu vergrößern.
    </p>

    <p><strong>Warum ist Lesen sinnvoll?</strong></p>
    <ul>
      <li>verbessert die Konzentration</li>
      <li>erweitert den Wortschatz</li>
      <li>stärkt logisches Denken</li>
      <li>hilft, komplexe Zusammenhänge besser zu verstehen</li>
    </ul>
    <p>Lesen trainiert das Gehirn ähnlich wie Sport den Körper.</p>

    <p><strong>Warum fällt es vielen schwer?</strong></p>
    <p>Im Alltag gibt es viele Ablenkungen:</p>
    <ul>
      <li>Smartphone</li>
      <li>soziale Medien</li>
      <li>kurze, schnelle Inhalte</li>
    </ul>
    <p>
      Dadurch fällt es schwer, längere Texte aufmerksam zu lesen.
      „Mehr lesen“ bedeutet daher auch, bewusst Zeit ohne Ablenkung zu nehmen.
    </p>

    <p><strong>Warum lohnt es sich als Gewohnheit?</strong></p>
    <p>
      Schon wenige Seiten pro Tag können langfristig viel bewirken. Regelmäßiges Lesen
      fördert ruhiges, fokussiertes Denken, reduziert oberflächlichen Medienkonsum und
      unterstützt persönliche sowie berufliche Entwicklung.
    </p>

    <form action="mehrlesen_praxis.php" method="post" style="text-align:center;">
      <input type="hidden" name="aktiv_nr" value="3">
      <button class="btn" type="submit" name="mehrlesen">Let’s go</button>
    </form>

    <p class="small">
      <a class="link" href="aktivitaeten.php">← Zurück</a> ·
      <a class="link" href="dashboard.php">Main menu</a>
    </p>

  </div>

  <div class="heroimg reading"></div>
</div>

<?php include("footer.php"); ?>

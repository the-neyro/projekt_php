<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $page_title ?? "Projekt"; ?></title>
    <link rel="stylesheet" href="styles2.css?v=2">
</head>
<body>

<div class="topbar">
    <div class="nav">
        <div class="brand">?</div>
        <div>
            <a href="dashboard.php">Home.</a>
            <a href="aktivitaeten.php">Aktvttn.</a>
            <a href="benutzer_auswahl.php">Auswl.</a>
            <a href="notizen.php">Notzn.</a>
            <a href="rauchen.php">Rauchfrei.</a>
            <a href="logout.php">Logout.</a>
        </div>
    </div>
</div>

<div class="container">

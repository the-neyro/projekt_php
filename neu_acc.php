<?php
session_start();
?>
<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sign up</title>
  <link rel="stylesheet" href="styles1.css">
</head>
<body>

<main class="auth-plain">
  <section class="box">
    <h1>Konto erstellen</h1>
    <p class="subtitle">
      Erstelle ein neues Konto.
    </p>

    <form action="#" method="post">
      <input type="text" required minlength="6" maxlength="14" name="username_new" placeholder="Username (6–14 Zeichen)">
      <input type="password" required minlength="8" maxlength="16" name="pass_new" placeholder="Password (8–16 Zeichen)">

      <button class="btn-plain" type="submit">Sign up</button>
    </form>

    <div class="links">
      <a class="link-plain" href="anmelden.php">Sign in</a>
      <a class="link-plain" href="index.html">Start</a>
    </div>

    <?php
    if (isset($_POST["username_new"]) && isset($_POST["pass_new"])) {
        require_once "db.php";
        $con = db();

        $uname  = $_POST["username_new"];
        $pass   = $_POST["pass_new"];
        $hashed = password_hash($pass, PASSWORD_DEFAULT);

        // Prüfen ob Username schon existiert
        $stmt = mysqli_prepare($con, "SELECT user_id FROM user WHERE username = ?");
        mysqli_stmt_bind_param($stmt, "s", $uname);
        mysqli_stmt_execute($stmt);
        $check = mysqli_stmt_get_result($stmt);

        if (mysqli_num_rows($check) > 0) {
            echo "<div class='error'>Username existiert schon</div>";
        } else {
            $stmt = mysqli_prepare($con, "INSERT INTO user(pass, username) VALUES(?, ?)");
            mysqli_stmt_bind_param($stmt, "ss", $hashed, $uname);
            mysqli_stmt_execute($stmt);
            echo "<div class='success'>Erfolgreich! Jetzt einloggen.</div>";
        }
    }
    ?>
  </section>
</main>

</body>
</html>

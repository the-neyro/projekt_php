<?php
session_start();
?>
<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sign in</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="auth-plain">
  <div class="box">
    <h1>Sign in</h1>

    <p class="subtitle">
      Nur Login.
    </p>

    <form action="#" method="post">
      <input type="text" required minlength="6" maxlength="14" name="username" placeholder="Username (6–14)">
      <input type="password" required minlength="8" maxlength="16" name="pass" placeholder="Password (8–16)">

      <button class="btn-plain" type="submit">Sign in</button>
    </form>

    <div>
      <br>
      <a class="link-plain" href="neu_acc.php">Sign up</a>
      <a class="link-plain" href="index.html">Start</a>
    </div>

    <?php
    if (isset($_POST["username"]) && isset($_POST["pass"])) {
        require_once "db.php";
        $con = db();

        $uname = $_POST["username"];
        $pass  = $_POST["pass"];

        $stmt = mysqli_prepare($con, "SELECT user_id, pass FROM user WHERE username = ? LIMIT 1");
        mysqli_stmt_bind_param($stmt, "s", $uname);
        mysqli_stmt_execute($stmt);
        $res = mysqli_stmt_get_result($stmt);

        if (mysqli_num_rows($res) === 1) {
            $row = mysqli_fetch_assoc($res);
            if (password_verify($pass, $row["pass"])) {
                $_SESSION["user_id"]  = $row["user_id"];
                $_SESSION["username"] = $uname;
                header("Location: dashboard.php");
                exit;
            } else {
                echo "<div class='error'>Falsches Passwort</div>";
            }
        } else {
            echo "<div class='error'>Username nicht gefunden</div>";
        }
    }
    ?>
  </div>
</div>

</body>
</html>

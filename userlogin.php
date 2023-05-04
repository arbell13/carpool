<!DOCTYPE html>
<html lang="en">
<?php
include 'includes/connection.php';

if (isset($_SESSION['userType'])) {
  if ($_SESSION['userType'] == 'admin') {
    header("location: index.php");
  } else if ($_SESSION['userType'] == 'Driver') {
    header("location: driverdash.html");
  } else {
  }
}
?>

<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    body,
    html {
      height: 100%;
      margin: 0;
    }

    .center {
      display: block;
      margin-left: auto;
      margin-right: auto;
    }

    body {
      background-image: url('bg.jpg');
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
      height: auto;
      width: 100%;
    }

    .container {
      padding: 16px;
      text-align: center;
    }

    input[type=text],
    input[type=password] {
      width: 50%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
      text-align: center;
    }

    button {
      background-color: #7b91e7;
      color: black;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 50%;
    }

    .loginMessage {
      color: red;
    }
  </style>
</head>

<body>
  <img src="logo.png" alt="Paris" class="center">

  <div class="container">

    <?php
      if (isset($_SESSION['status'])){
        echo '<h3 class="loginMessage">'.$_SESSION['status'].'</h3>';
      }
    ?>

    <form action="login1.php" method="POST">
      <label for="email"><b>Email</b></label><br>
      <input type="text" placeholder="Enter Email" name="email" required><br>

      <label for="password"><b>Password</b></label><br>
      <input type="password" placeholder="Enter Password" name="password" required>

      <button type="submit" name="submit">Login</button>
    </form>

    <p>No account? <a href="register.html">Sign Up</a>.</p>

  </div>


</body>

</html>
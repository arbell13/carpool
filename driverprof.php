<!DOCTYPE html>
<html lang="en">
<?php
include 'includes/connection.php';

$sql = "SELECT * FROM user WHERE usersID = " . $_SESSION['usersID'];
$query = $connection->query($sql);
$row = $query->fetch_assoc();
?>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    body {
      background-image: url('bg.jpg');
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
      height: 100vh;
    }

    h1 {
      text-align: center;
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
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 50%;
    }

    <?php
    if (isset($_SESSION['savingProfileMessageStatus']) && ($_SESSION['savingProfileMessageStatus'] == 'success')){
      echo ".savingProfileMessage {
        color: green;
      }";
    }else if ($_SESSION['savingProfileMessageStatus'] == 'error'){
      echo ".savingProfileMessage {
        color: red;
      }";
    }
    ?>

  </style>
</head>

<body>
  <?php include 'driverdash.php'; ?>
  <h1>User's Profile</h1>

  <div class="container">
    <?php
    if (isset( $_SESSION['savingProfileMessage'])) {
      echo '<h3 class="savingProfileMessage">' .  $_SESSION['savingProfileMessage'] . '</h3>';
    }
    ?>

    <form action="save_profile.php" method="POST">
      <label for="firstName"><b>First Name</b></label><br>
      <input type="text" name="firstName" value=<?php echo $row['firstname'] ?> required><br>

      <label for="middleName"><b>Middle Name</b></label><br>
      <input type="text" name="middleName" value=<?php echo $row['middlename'] ?> required><br>

      <label for="lastName"><b>Last Name</b></label><br>
      <input type="text" name="lastName" value=<?php echo $row['lastname'] ?> required><br>

      <label for="barangay"><b>Barangay</b></label><br>
      <input type="text" name="barangay" value=<?php echo $row['barangay'] ?> required><br>

      <label for="street"><b>Street</b></label><br>
      <input type="text" name="street" value=<?php echo $row['street'] ?> required><br>

      <label for="city"><b>City</b></label><br>
      <input type="text" name="city" value=<?php echo $row['city'] ?> required><br>

      <label for="province"><b>Province</b></label><br>
      <input type="text" name="province" value=<?php echo $row['province'] ?> required><br>

      <label for="phoneNumber"><b>Phone Number</b></label><br>
      <input type="text" name="phoneNumber" value=<?php echo $row['phonenumber'] ?> required><br>

      <label for="email"><b>Email</b></label><br>
      <input type="text" name="email" value=<?php echo $row['email'] ?> required><br>

      <label for="password"><b>Password</b></label><br>
      <input type="text" name="password" required><br>

      <label for="newPassword"><b>New Password</b></label><br>
      <input type="text" name="newPassword"><br>

      <button type="submit" name="submit">Save</button>
    </form>
  </div>
</body>

</html>
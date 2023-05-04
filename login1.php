<?php
include 'includes/connection.php';

if(isset($_POST['submit'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];
    $verify = 1;
    $rec = "SELECT * FROM user WHERE Email = '$email' AND Password = '$password'";
    $result = mysqli_query($connection, $rec);
    
    $row=mysqli_fetch_assoc($result);
   
    if (is_array($row)) {
        $_SESSION['usersID'] = $row['usersID'];
        $_SESSION['userType'] = $row['userType'];
        $_SESSION['FirstName'] = $row['firstname'];
        $_SESSION['LastName'] = $row['lastname'];
    }

    if (!empty($row)){
        if($row['userType'] == 'Passenger') {
            // header("location: pasreg.php");
        }else if($row['userType'] == 'Driver') {
            header("location: driverprof.php");
        }else if($row['userType'] == 'admin') {
            header("location: index.php");
        }
    }else {
        $_SESSION['status'] = "Invalid User Credentials!";
        header("location: userlogin.php");
        // exit(0);
    }
}
?>
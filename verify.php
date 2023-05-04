=<?php

include 'includes/connection.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';

$now = new DateTime();
$now->setTimezone(new DateTimeZone('Asia/Manila'));
$timestamp = $now->format('Y-m-d H:i:s');

if($_SERVER['REQUEST_METHOD'] === 'GET'){

    $email = $_GET['user'];
    
    // Checks the Email if Verified
    $sql = "SELECT * FROM users WHERE user_email='$email'";
    $result = $connection->query($sql);

    $row = $result->fetch_assoc();
    if(!is_null($row['user_verified_at'])){
        $_SESSION['bg'] =  "danger";
        $_SESSION['message'] = "Email has already been verified!";
        header('Location: index.php');
        return;
    }

    // Prepared Statement & Binding (Avoid SQL Injections)
    $stmnt = $connection->prepare("UPDATE users SET user_verified_at=? WHERE user_email=?");
    $stmnt->bind_param('ss', $timestamp, $email);
    $stmnt->execute();
    $stmnt->close();
    $connection->close();

    $_SESSION['bg'] =  "success";
    $_SESSION['message'] = "Your email is now verified!";
    header('Location: index.php');
}

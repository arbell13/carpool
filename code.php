<?php
session_start();
include('dbcon.php');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


require 'vendor/autoload.php';

function sendemail_verify($name, $email, $verify_token)
{
    $mail = new PHPMailer(true);
    //$mail -> SMTPDebug = 2;
    $mail ->isSMTP();
    $mail ->SMTPAuth = true;

    $mail->Host = "smtp.gmail.com";
    $mail->Username = "arabellaflores92@gmail.com";
    $mail->Password = "vavxipiqnmzjpfky";

    $mail->SMTPSecure = "ssl";
    $mail->Port = 465;

    $mail->setFrom("arabellaflores92@gmail.com", $name);
    $mail->addAddress($email);

    $mail->isHTML(true);
    $mail->Subject = "Email Verification from Funda of web IT";

    $email_template = "
    <h2>You have Registered with Funda of Web IT</h2>
    <h5>Verify your email address to Login with the below given links</h5>
    <br/><br/>
    <a href=http://localhost/carpool/verify-email.php?token=$verify_token'> Click Me </a>
    ";

    $mail->Body = $email_template;
    $mail->send();
   // echo "Message has been sent";

}



if(isset($_POST['register_btn']))
{
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $verify_token = md5(rand());

    sendemail_verify("$name", "$email", "$verify_token");
    echo "sent or not ? ";

    //Email Exists or not 
    $check_email_query = "SELECT email FROM users WHERE email='$email' LIMIT 1";
    $check_email_query_run = mysqli_query($con, $check_email_query);

    if(mysqli_num_rows($check_email_query_run) > 0)
    {
        $_SESSION['status'] = "Email ID already Exsist";
        header("Location: register.php");
    }
        else
        {
            //Insert User/ Registerd User Data
            $query = "INSERT INTO users (name,phone,email,password,verify_token) VALUES ('$name','$phone','$email','$password','$verify_token')";
            $query_run = mysqli_query($con, $query);

            if($query_run)
            {
                sendemail_verify("$name", "$email", "$verify_token");
                $_SESSION['status'] = "Registration Successful! Please verify your Email Address";
                header("Locarion: register.php");
            }
            else{
                $_SESSION['status'] = "Registration Failed";
                header("Locarion: register.php");
            }
        }
}

?>
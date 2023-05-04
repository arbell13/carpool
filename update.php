<?php

session_start();

if(isset($_SESSION['new']))
{
    header("location:userlogin.html");
}

elseif ($_SESSION['type']=='admin')
{
    header("location:userlogin.html");
}


$host="localhost";
$user="root";
$password="";

$db="carpool_app";

$data=mysqli_connect($host,$user,$password,$db);






?>
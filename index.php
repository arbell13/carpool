<?php

include 'includes/connection.php';

if (isset($_SESSION['userType'])){
    if ($_SESSION['userType'] == 'admin'){

    } else if ($_SESSION['userType'] == 'Driver'){
        header("location: driverprof.php");
    }else{

    }
}else{
    header("location: userlogin.php");
}

// Retrieves Registered Users
$sql = "SELECT * FROM user WHERE verify_status = 'verify'";
$result = $connection->query($sql);

if (!empty($_SESSION['message'])) {
    $message = $_SESSION['message'];
    $bg = $_SESSION['bg'];
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carpool App</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <style>
        body {
            background-image: url('bg.jpg');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 100vh;
        }

        .row {
            text-align: left;
        }
    </style>
</head>

<body>
    <?php include 'driverdash.php'; ?>
    <div class="container my-3 col-lg-5">


        <?php
        if (!empty($_SESSION['message'])) :
        ?>
            <div class="col">
                <p class="text-bg-<?= $bg ?> rounded p-2"> <?= $message ?> </p>
            </div>
        <?php

            session_destroy();
        endif ?>



        <div class="row mt-3">

            <h1> Registered Users </h1>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <!-- <th scope="col">Verification Date</th> -->
                    </tr>
                </thead>
                <tbody>

                    <?php
                    if ($result->num_rows > 0) :
                        $x = 1;
                        while ($row = $result->fetch_assoc()) :
                    ?>
                            <tr>
                                <th> <?= $x ?> </th>
                                <td> <?= $row['firstname'] . " " . $row['lastname'] ?> </td>
                                <td> <?= $row['email'] ?> </td>
                                <!-- <td> <?= date("M d, Y H:i A", strtotime($row['verify_status'])) ?> </td> -->
                                <!-- date("M d, Y H:iA", strtotime($row['user_verified_at']) -->
                            </tr>
                    <?php
                            $x++;
                        endwhile;
                    endif;
                    ?>
                </tbody>
            </table>
            <div class="col">
                <a href="register.html" class="btn btn-primary"> Register </a>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
    </script>
</body>

</html>
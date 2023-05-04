<header>
    <div class="navbar">
        <ul class="links">
            <li><a href="#">Home</a></li>
            <?php
            if (isset($_SESSION['userType']) && $_SESSION['userType'] != 'admin'){
                echo "<li><a href='driverprof.php'>Profile</a></li>";
            }
            ?>
            <li><a href="logout.php">Logout</a></li>
        </ul>
    </div>
</header>


<style>
    body {
        background-image: url('bg.jpg');
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        height: 100vh;
    }

    li {
        list-style: none;
    }

    a {
        text-decoration: none;
        color: black;
        font-size: 1rem;
    }

    a:hover {
        color: rgb(6, 23, 86);
    }

    header {
        position: relative;
        padding: 0rem 2rem;
    }

    .navbar {
        width: 100%;
        height: 60px;
        max-width: 1200px;
        margin: 0 auto;
        display: flex;
        text-align: center;
        justify-content: space-between;
    }

    .navbar .logo a {
        font-size: 1.5rem;
        font-weight: bold;
    }

    .navbar .links {
        display: flex;
        gap: 2rem;
    }

    .action-btn {
        color: black;
        padding: 0.5rem 1rem;
        border: none;
        outline: none;
        border-radius: 20px;
        font-size: 15px;
        font-weight: bold;
        cursor: pointer;

    }
</style>
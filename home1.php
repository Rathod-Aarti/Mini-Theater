<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        
        section{
            padding-top: 15px;
        }
        .wrapper{
            max-height: 420px;
            border: 1 px solid #ddd;
            display: flex;
            overflow-x: auto;
        }
        .wrapper::-webkit-scrollbar{
            width: 0;
        }
        .wrapper .item{
            min-width: 210px;
            height: 210px;
            line-height: 50px;
            text-align: center;
            margin: 10px;
            background-color: #121242;
            margin-right: 2px;
        }
    div>.item>img{
            cursor: pointer;
            height: 152px;
            width: 130px;
        }
     h2{
        font-size: 25px;
        margin: 15px;
        font-family:  arial;
     }
    .viewAll{
        color: white;
        padding: 12px;
        cursor: pointer;
        right:0;
        position: absolute;
       
    }
    .viewAll>a{
        color: white;
        text-decoration: none;
    }
    
    </style>
</head>
<body style="background-color:#050505;color:#616161;font-family:arial;">
    <?php include "navbar.php"; ?>
    <?php  include "navbar1.php"; ?>
    
    <section style="padding-top: 90px;">
        <div class="recentMovies">
            <h2>Recently Added</h2>
            <div class="viewAll"><a href="home1.php">View All</a></div>
            <div class="wrapper">
            <?php
                require_once "./admin_panel/config/dbconnect.php";
                $sql = "SELECT * FROM movie ORDER BY movie_id DESC limit 10"; // Added space between * and FROM
                $result = mysqli_query($conn, $sql);
                while($row = mysqli_fetch_assoc($result)){
                    // echo "<div class='item'><img src='" . $row['movie_image'] . "' alt='" . $row['movie_name'] . "'></div>";
            ?>
                <img class="item" src="<?php echo "./admin_panel/". $row['movie_image']; ?>" alt="<?php echo $row['movie_name']; ?>">
            <?php

            }
            ?>
            </div>
        </div>
    </section>
    
 
    <section>
        <div class="recentMovies">
            <h2>Movies</h2>
            <div class="wrapper">
            <?php
                $sql = "SELECT * FROM movie"; 
                $query_result = mysqli_query($conn, $sql); 
                while($row = mysqli_fetch_assoc($query_result)) {

            ?>
                <img class="item" src="./admin_panel/<?php echo  $row["movie_image"]; ?>" alt="<?php echo $row['movie_name']; ?>">

            <?php
                }
            ?>

            </div>
            <button class="viewAll"><a href="movies.php">View All</a></button>
        </div>
    </section>
    <section>
        <div class="recentMovies">
            <h2>TV Shows</h2>
            <div class="wrapper">
                <?php
                    $sql = "SELECT * FROM tvshow"; // Added space between * and FROM
                    $result = mysqli_query($conn, $sql);
                    while($row = mysqli_fetch_assoc($result)){
                    ?>
                <img class="item" src="./admin_panel/<?php echo $row['tvshow_image']; ?>" alt="<?php echo $row['tvshow_name']; ?>">
                <?php
                    }
                ?>
            </div>
            <button class="viewAll"><a href="tvshows.php">View All</a></button>
    </section>
    <section>
        <div class="recentMovies">
            <h2>Kids</h2>
            <div class="wrapper">
                <?php
                    $sql = "SELECT * FROM kids"; // Added space between * and FROM
                    $result = mysqli_query($conn, $sql);
                    while($row = mysqli_fetch_assoc($result)){
                        // echo "<div class='item'><img src='" . $row['movie_image'] . "' alt='" . $row['movie_name'] . "'></div>";
                ?>
                <img class="item" src="./admin_panel/<?php echo $row['kids_image']; ?>" alt="<?php echo $row['kids_name']; ?>">
                <?php
                    }
                ?>
                
            </div>
            <button class="viewAll"><a href="Kids.php">View All</a></button>
        </div>
    </section>
    <?php
        include "footer.php";
    ?>
</body>
</html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kid Page</title>
    <!-- <style>
        section {
            padding-top: 15px;
        }

        /* Hero Bar Styling */
        .hero-bar {
            width: 100%;
            height: 450px;
            background: linear-gradient(to bottom right, #1e1e42, #141428);
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            overflow: hidden;
            margin-top: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
        }

        .hero-bar img {
            width: 100%;
            height: 100%;
            object-fit: contain;
            border-radius: 10px;
            background-color: black;
        }

        .hero-bar video {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 10px;
        }

        .hero-bar img:hover,
        .hero-bar video:hover {
            transform: scale(1.05);
            opacity: 0.9;
        }

        /* Movie Info Section below Hero Bar */
        .movie-info {
            text-align: left;
            color: white;
            padding: 20px;
            background-color: #050505;
            border-radius: 10px;
        }

        .movie-info h3 {
            font-size: 28px;
            margin: 10px 0;
        }

        .movie-info p {
            font-size: 18px;
            margin: 5px 0;
        }

        /* Wrapper Styles */
        .wrapper {
            max-height: 420px;
            display: flex;
            overflow-x: auto;
        }

        .wrapper::-webkit-scrollbar {
            width: 0;
        }

        .wrapper .item {
            min-width: 210px;
            height: 210px;
            line-height: 50px;
            text-align: center;
            margin: 10px;
            background-color: #121242;
            margin-right: 2px;
        }

        div>.item>img {
            height: 152px;
            width: 130px;
        }

        h2 {
            font-size: 25px;
            margin: 15px;
            font-family: arial;
        }

        .viewAll {
            color: white;
            padding: 12px;
            cursor: pointer;
            right: 0;
            position: absolute;
        }

        .viewAll>a {
            color: white;
            text-decoration: none;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .hero-bar {
                height: 300px;
            }
        }
    </style> -->
    <style>
        section {
            padding-top: 15px;
        }

        /* Hero Bar Styling */
        .hero-bar {
            width: 100%;
            height: 450px;
            background: linear-gradient(to bottom right, #1e1e42, #141428);
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            overflow: hidden;
            margin-top: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
        }

        /* Ensure images and videos fill the hero-bar while maintaining aspect ratio */
        .hero-bar img {
            width: 100%;
            height: 100%;
            object-fit: contain;
            /* Change 'cover' to 'contain' to fit the image within the hero bar */
            border-radius: 10px;
            /* Maintain the border radius */
            background-color: black;
        }

        .hero-bar video {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 10px;
        }

        /* Add a slight zoom effect on hover for images and videos */
        .hero-bar img:hover,
        .hero-bar video:hover {
            transform: scale(1.05);
            opacity: 0.9;
        }

        /* Movie Info Section below Hero Bar */
        .movie-info {
            text-align: left;
            color: white;
            padding: 20px;
            background-color: #050505;
            border-radius: 10px;
        }

        .movie-info h3 {
            font-size: 28px;
            margin: 10px 0;
        }

        .movie-info p {
            font-size: 18px;
            margin: 5px 0;
        }

        /* General Styles */
        .wrapper {
            max-height: 420px;
            display: flex;
            overflow-x: auto;
        }

        .wrapper::-webkit-scrollbar {
            width: 0;
        }

        .wrapper .item {
            min-width: 210px;
            height: 210px;
            line-height: 50px;
            text-align: center;
            margin: 10px;
            background-color: #121242;
            margin-right: 2px;
            cursor: pointer;
            transition: transform 0.3s ease;
            position: relative;
            /* Enable absolute positioning for the child */
        }

        div>.item>img {
            height: 210px;
            width: 212px;
            border-radius: 10px;
        }

        .movie-name {
            position: absolute;
            bottom: 1px;
            /* Position it above the bottom of the item */
            left: 50%;
            /* Center it horizontally */
            transform: translateX(-50%);
            /* Adjust for the width of the text */
            /* background-color: rgba(0, 0, 0, 0.7); Semi-transparent background */
            color: white;
            padding: 5px 10px;
            border-radius: 1px;
            opacity: 0;
            /* Start hidden */
            transition: opacity 0.3s ease;
            /* Smooth transition */
            white-space: nowrap;
            /* Prevent text from wrapping */
            overflow: hidden;
            /* Hide any overflow */
            text-overflow: ellipsis;
            /* Add ellipsis for overflowed text */
            max-width: 90%;
            /* Set a maximum width to avoid stretching */
            font-weight: bold;
        }

        .wrapper .item:hover .movie-name {
            opacity: 1;
            /* Show on hover */
        }

        .wrapper .item:hover {
            transform: scale(1.2);
            /* Your hover scale effect */
        }

        h2 {
            font-size: 25px;
            margin: 15px;
            margin-left: 60px;
            font-family: Arial, sans-serif;
            color: #fff;
        }

        .viewAll {
            color: white;
            padding: 12px;
            cursor: pointer;
            right: 0;
            position: absolute;
        }

        .viewAll>a {
            color: white;
            text-decoration: none;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .hero-bar {
                height: 300px;
            }
        }
    </style>
</head>

<body style="background-color:#050505;color:#616161;font-family:arial;">

    <?php include "navbar.php"; ?>
    <?php include "navbar1.php"; ?>

    <!-- Hero Bar Section -->
    <div class="hero-bar" id="hero-bar">
        <img id="hero-image" src="./admin_panel/uploads/logo/logo-color.png" alt="Default Movie Poster">
        <video id="hero-video" src="" controls style="display:none;" autoplay></video>
    </div>

    <!-- Movie Info Section -->
    <div class="movie-info" id="movie-info">
        <h3 id="movie-name"></h3>
        <p id="movie-desc"></p>
        <p id="movie-year"></p>
    </div>

    <section style="padding-top: 90px;">
        <div class="recentkids">
            <h2>Latest kid for you</h2>
            <div class="viewAll"><a href="kids1.php">View All</a></div>
            <div class="wrapper">
                <?php
                require_once "./admin_panel/config/dbconnect.php";

                $result = mysqli_query($conn, "SELECT * FROM kids ORDER BY kids_id DESC limit 10");
                while ($row = mysqli_fetch_assoc($result)) {
                    ?>
                    <div class="item" onclick="playMovie('<?php echo './admin_panel/' . $row['video_src']; ?>', 
                                            '<?php echo $row['kids_name']; ?>', 
                                            '<?php echo $row['kids_desc']; ?>', 
                                            '<?php echo $row['release_year']; ?>')">
                        <img src="<?php echo './admin_panel/' . $row['kids_image']; ?>"
                            alt="<?php echo $row['kids_name']; ?>">
                        <div class="movie-name"><?php echo $row['kids_name']; ?></div>
                    </div>
                    <?php
                }
                ?>
            </div>
        </div>
    </section>

    <section>
        <div class="recentkids">
            <h2>Comedy kids</h2>
            <div class="wrapper">
                <?php
                $sql = "SELECT * FROM kids";
                $query_result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($query_result)) {
                    ?>
                    <div class="item" onclick="playMovie('<?php echo './admin_panel/' . $row['video_src']; ?>', 
                                            '<?php echo $row['kids_name']; ?>', 
                                            '<?php echo $row['kids_desc']; ?>', 
                                            '<?php echo $row['release_year']; ?>')">
                        <img src="./admin_panel/<?php echo $row["kids_image"]; ?>" alt="<?php echo $row['kids_name']; ?>">
                        <div class="movie-name"><?php echo $row['kids_name']; ?></div>
                    </div>
                    <?php
                }
                ?>
            </div>
        </div>
    </section>

    <script>
        function playMovie(videoSrc, movieName, movieDesc, movieYear) {
            const heroBar = document.getElementById('hero-bar');
            const heroImage = document.getElementById('hero-image');
            const heroVideo = document.getElementById('hero-video');
            const movieNameElement = document.getElementById('movie-name');
            const movieDescElement = document.getElementById('movie-desc');
            const movieYearElement = document.getElementById('movie-year');

            // Scroll the page to the hero bar
            heroBar.scrollIntoView({ behavior: "smooth", block: "start" });

            // Hide the image and show the video
            heroImage.style.display = 'none';
            heroVideo.style.display = 'block';
            heroVideo.src = videoSrc;
            heroVideo.play(); // Start playing the video

            // Update movie information
            movieNameElement.innerText = movieName;
            movieDescElement.innerText = movieDesc;
            movieYearElement.innerText = "Release Year: " + movieYear;
        }
    </script>
</body>

</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sidebar Navigation</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            color: white;
            background-color: #121212; /* Added a background for visibility */
        }

        .navbar {
            position: fixed;
            top: 50%;
            left: 0;
            height: 100%;
            width: 60px;
            background: linear-gradient(to right, rgba(0, 0, 0, 1), rgba(0, 0, 0, 0));
            color: white;
            transition: width 0.5s ease, background 0.5s ease;
            overflow: hidden;
            z-index: 1000;
            transform: translateY(-50%);
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }

        .navbar:hover {
            width: 200px;
            background: linear-gradient(to right, rgba(0, 0, 0, 1), rgba(0, 0, 0, 0));
        }

        .navbar ul {
            list-style-type: none;
            padding: 10px;
            margin-top: 20px;
        }

        .navbar ul li {
            margin: 20px 0;
            display: flex;
            align-items: center;
        }

        .navbar ul li img.icons {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }

        /* Always show icons, but hide the text initially */
        .navbar ul li a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            padding: 10px 0;
            flex-grow: 1;
            white-space: nowrap; /* Prevent text from wrapping */
            display: flex;
            align-items: center;
            visibility: hidden; /* Initially hide text */
        }

        /* Show both icons and text when hovered */
        .navbar:hover ul li a {
            visibility: visible;
        }

        .navbar ul li img.icons {
            visibility: visible; /* Icons are always visible */
        }

        .navbar:hover ul li a:hover {
            background-color: rgba(0, 0, 0, 0.2);
            color: #fff;
        }

        .icons {
            width: 20px;
            height: 20px;
        }
    </style>
</head>
<body>

<div class="navbar">
    <ul>
        <li><a href="home1.php"><img class="icons" src="images/home.png" alt="home">Home</a></li>
        <li><a href="movies.php"><img class="icons" src="images/movies.png" alt="movie">Movies</a></li>
        <li><a href="tvshows.php"><img class="icons" src="images/shows.png" alt="show">TV Shows</a></li>
        <li><a href="kids.php"><img class="icons" src="images/kid.png" alt="kid">Kids</a></li>
    </ul>
</div>

<script src="script.js"></script>

</body>
</html>

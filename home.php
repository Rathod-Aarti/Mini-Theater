


<?php
session_start();
require_once "./admin_panel/config/dbconnect.php";
// Check if the user is logged in
if (empty($_SESSION['username'])) {
	header("Location: index.php");
	exit();
}
if (isset($_SESSION["username"])) {
    $username = $_SESSION["username"];
    session_write_close();
} else {
    // since the username is not set in session, the user is not-logged-in
    // he is trying to access this page unauthorized
    // so let's clear all session variables and redirect him to index
    session_unset();
    session_write_close();
    $url = "./index.php";
    header("Location: $url");
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- TAB ICON LINK -->
  <link rel="icon" href="assets/images/tab-icon1.webp">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" integrity="sha512-BnbUDfEUfV0Slx6TunuB042k9tuKe3xrD6q4mg5Ed72LTgzDIcLPxg6yI2gcMFRyomt+yJJxE+zJwNmxki6/RA==" crossorigin="anonymous" />
    <link rel="stylesheet" href="profile.css">
</head>
<body style="background-color:#050505">
    <header>
        <div class="logo">
        <a href="home.php">
          <img src="images/logo-white.png" alt="imovies logo" height="100px" width="160px"/>
        </a>
      </div>

      </header>
      
      <div class="list-profile">
        
         <h1 class="list-profile-title">Welcome <?php echo $username;?> !</h1>
        
        <div class="card">
         <div class="profile"> 
            <a href="home1.php">
             <img class="profile-img" src="assets/images/user1.png" href="home1.php">
         </div>
         <p>user1</p>
        </div>
        
        <div class="card">
         <div class="profile"> 
            <img class="profile-img" src="assets/images/user2.png">
         </div>
         <p>user2</p>
        </div>
<?php
require "./admin_panel/config/dbconnect.php";
// Prepare the SQL statement with a placeholder for the username
$stmt = $conn->prepare("SELECT isAdmin FROM users WHERE username = ?");
$stmt->bind_param("s", $username); // Bind the username parameter

// Execute the statement
$stmt->execute();

// Fetch the result
$result = $stmt->get_result();
$row = $result->fetch_assoc();

// Close the statement
$stmt->close();

if ($row["isAdmin"] == 1) 
    { echo '
        <div class="card">
         <div class="profile"> 
          <a href="http://localhost/MiniTheater/admin_panel/index.php">
            <img class="profile-img" src="assets/images/user3.png">
            </a>
         </div>
         <p>Admin Pannel</p>
        </div>';
    }else{
      echo '
        <div class="card">
         <div class="profile"> 
            <img class="profile-img" src="assets/images/user3.png">
         </div>
         <p>user3</p>
        </div>
        ';
    }
  ?>

        
        
        
        <div class="profile-button">
          <button>Manage profile</button>
        </div>

      </div>
    </body>
    </html>

<head>
<style>
    * {
    margin: 0%;
    padding: 0%;
    box-sizing: border-box;
}

.navContainer {
    background-color: #050505;
    position: fixed;
    color: white;
    width: 100%;
    height: 75px;
    display: flex;
    justify-content: space-between;
    overflow: visible;
}

.logo>img {
    height: 75px;
    width: 129px;
}
.sub-nav{
    display: flex;
    align-items: center;
    margin-right: 24px;
    justify-content: center;
}
.sub-nav>a{
    color: white;
    margin: 12px;
    text-decoration:none;
}
    </style>
</head>

<!-- Navbar Start -->
<nav class="navContainer">
    <div class="logo">
            <img src="images/logo-white.png" alt="logo">
    </div>
    <nav class="sub-nav">
        <a href="home.php">Account</a>
        <a href="logout.php" >Logout</a>        
    </nav> 
</nav>
    <!-- Navbar end -->


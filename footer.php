<head>
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}



body {
    font-family: 'Arial', sans-serif;
}

footer {
    background: linear-gradient(120deg, #232526, #414345);
    color: white;
    padding: 40px 0;
    text-align: center;
}

.footer-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    /* max-width: 1200px; */
    max-width: 100%;
    margin: 0 auto;
}

.footer-section {
    flex: 1;
    margin: 10px;
    min-width: 200px;
}

.footer-section h4 {
    margin-bottom: 20px;
    font-size: 20px;
    text-transform: uppercase;
    border-bottom: 2px solid #f1f1f1;
    display: inline-block;
}

.footer-section p {
    font-size: 16px;
    margin-bottom: 15px;
}

.footer-section ul {
    list-style: none;
    padding: 0;
}

.footer-section ul li {
    margin-bottom: 10px;
}

.footer-section ul li a {
    color: #f1f1f1;
    text-decoration: none;
    font-size: 16px;
}

.footer-section ul li a:hover {
    color: #f9c846;
    text-decoration: underline;
}

.social-media {
    display: flex;
    justify-content: center;
}

.social-icon {
    margin: 0 10px;
    color: #f1f1f1;
    text-decoration: none;
    font-size: 18px;
}

.social-icon:hover {
    color: #f9c846;
}

.footer-bottom {
    margin-top: 20px;
    border-top: 1px solid #f1f1f1;
    padding-top: 20px;
    font-size: 16px;
}

@media (max-width: 768px) {
    .footer-container {
        flex-direction: column;
        align-items: center;
    }
    .footer-section {
        margin: 20px 0;
    }
}
    </style>
</head>
<!-- Footer Section -->
<footer>
        <div class="footer-container">
            <div class="footer-section">
                <h4>About Us</h4>
                <p>We are the leading OTT platform providing a wide range of movies, TV shows, and documentaries.</p>
            </div>
            <div class="footer-section">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="movies.php">Movies</a></li>
                    <li><a href="shows.php">TV Shows</a></li>
                    <li><a href="kids.php">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Follow Us</h4>
                <div class="social-media">
                    <a href="#" class="social-icon">Facebook</a>
                    <a href="#" class="social-icon">Twitter</a>
                    <a href="#" class="social-icon">Instagram</a>
                    <a href="#" class="social-icon">LinkedIn</a>
                </div>
            </div>
            <div class="footer-section">
                <h4>Contact Us</h4>
                <p>Email: minitheater.ott@gmail.com</p>
                <p>Phone: +966 297 2451</p>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 Mini Theater OTT Platform | | All rights reserved.</p>
        </div>
    </footer>
<!-- Footer section end -->
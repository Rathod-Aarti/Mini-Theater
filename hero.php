<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OTT Platform</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .hero-bar {
            background-color: #000;
            color: #fff;
            padding: 20px;
            margin-bottom: 20px;
        }

        .hero-bar img {
            max-width: 100%;
            height: auto;
        }

        .movie-slide img {
            cursor: pointer;
            transition: transform 0.2s ease;
        }

        .movie-slide img:hover {
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <div class="container mt-4">
        <!-- Hero Bar -->
        <div id="hero-bar" class="hero-bar text-center">
            <h2>Featured Movie</h2>
            <img src="placeholder.jpg" alt="Featured Movie" id="hero-image" class="img-fluid">
            <p id="hero-description">Click a movie to view details here.</p>
        </div>

        <!-- Slide Bar -->
        <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner movie-slide">
                <div class="carousel-item active">
                    <img src="./admin_panel/uploads/movie/aaradhna.jpg" class="d-block w-100" alt="Movie 1" data-title="Movie 1" data-desc="Description of Movie 1">
                </div>
                <div class="carousel-item">
                    <img src="./admin_panel/uploads/movie/aaradhna.jpg" class="d-block w-100" alt="Movie 2" data-title="Movie 2" data-desc="Description of Movie 2">
                </div>
                <div class="carousel-item">
                    <img src="./admin_panel/uploads/movie/aaradhna.jpg" class="d-block w-100" alt="Movie 3" data-title="Movie 3" data-desc="Description of Movie 3">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // JavaScript to handle clicks on movie slide
        const movieSlides = document.querySelectorAll('.carousel-item img');
        const heroImage = document.getElementById('hero-image');
        const heroDescription = document.getElementById('hero-description');

        movieSlides.forEach(slide => {
            slide.addEventListener('click', function () {
                const title = this.getAttribute('data-title');
                const desc = this.getAttribute('data-desc');
                const imgSrc = this.src;

                // Update Hero Bar
                heroImage.src = imgSrc;
                heroDescription.textContent = `${title}: ${desc}`;
            });
        });
    </script>
</body>
</html>

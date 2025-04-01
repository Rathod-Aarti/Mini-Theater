<?php
    include_once "../config/dbconnect.php";

    if (isset($_POST['upload'])) {
        $MovieName = mysqli_real_escape_string($conn, $_POST['m_name']);
        $desc = mysqli_real_escape_string($conn,$_POST['m_desc']);
        $release_year = $_POST['m_release_year'];
        $category = $_POST['category'];

        // Video file handling
        $video = $_FILES['video']['name'];
        $video_temp = $_FILES['video']['tmp_name'];
        $video_location = "./uploads/videos/";
        $video_path = $video_location . $video;
        move_uploaded_file($video_temp, $video_path);

        // Image file handling
        $image_name = $_FILES['file']['name'];
        $image_temp = $_FILES['file']['tmp_name'];
        $image_location = "./uploads/movie/";
        $image_path = $image_location . $image_name;
        move_uploaded_file($image_temp, $image_path);

        // SQL Insert Query
        $insert = mysqli_query($conn, "INSERT INTO movie (movie_name, movie_image, movie_desc, category_id, release_year, video_src) 
                                        VALUES ('$MovieName', '$image_path', '$desc', '$category', '$release_year', '$video_path')");

        if ($insert) {
            echo "Records added successfully.";
            header("Location: ../index.php?movie=success");
            exit();  // Stop further execution after redirection
        } else {    
            echo "Records not added successfully.";
            header("Location: ../index.php?movie=error");
            exit();
        }
    }
?>

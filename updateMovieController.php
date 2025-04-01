<?php
    include_once "../config/dbconnect.php";

    if (isset($_POST['update'])) {
        $MovieName = mysqli_real_escape_string($conn, $_POST['m_name']);
        $desc = mysqli_real_escape_string($conn,$_POST['m_desc']);       
        $release_year = $_POST['m_release_year'];
        $category = $_POST['category'];
        $movie_id = $_POST['movie_id'];
        $existingVideo = $_POST['existingVideo'];
        $newVideo = $_FILES['newVideo']['name'];
        $temp = $_FILES['newVideo']['tmp_name'];
        $location = "./uploads/videos/";
        $video = $location . $newVideo;
        move_uploaded_file($temp, $video);
        $existingImage = $_POST['existingImage'];
        $newImage = $_FILES['newImage']['name'];
        $temp = $_FILES['newImage']['tmp_name'];
        $location = "./uploads/movie/";
        $image = $location . $newImage;
        move_uploaded_file($temp, $image);

        if ($newImage=='') {
            $image = $existingImage;
        }
        if ($newVideo== '') {
            $video=$existingVideo;
        }
        $update = mysqli_query($conn, "UPDATE movie SET 
        movie_name='$MovieName', 
        movie_image='$image',
        movie_desc='$desc', 
        release_year=$release_year, 
        category_id=$category,
        video_src = '$video'
        WHERE movie_id=$movie_id");

        if ($update) {
            echo "alert('Record updated successfully!')";
            header("Location: ../index.php?movie=success"); 
        } else {
            echo "Records not updated successfully.";
            header("Location: ../index.php?movie=error");
        }
    } else {
        header("Location: ../index.php?movie=error");
    }
?>
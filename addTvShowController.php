<?php
    echo "hello";
    include_once "../config/dbconnect.php";

    if (isset($_POST['upload'])) {
        $tvShowName = mysqli_real_escape_string($conn, $_POST['t_name']);
        $desc = mysqli_real_escape_string($conn,$_POST['t_desc']);
        $release_year = $_POST['t_release_year'];
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
        $image_location = "./uploads/show/";
        $image_path = $image_location . $image_name;
        move_uploaded_file($image_temp, $image_path);

        // SQL Insert Query
        $insert = mysqli_query($conn, "INSERT INTO tvshow (tvshow_name, tvshow_image, tvshow_desc, category_id, release_year, video_src) 
                                        VALUES ('$tvShowName', '$image_path', '$desc', '$category', '$release_year', '$video_path')");

        if ($insert) {
            echo "Records added successfully.";
            header("Location: ../index.php?tvshow=success");
            exit();  // Stop further execution after redirection
        } else {    
            echo "Records not added successfully.";
            header("Location: ../index.php?tvshow=error");
            exit();
        }
    }
?>

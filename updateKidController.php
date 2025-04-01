<?php
    include_once "../config/dbconnect.php";

    if (isset($_POST['update'])) {
        $kidsName = mysqli_real_escape_string($conn, $_POST['k_name']);
        $desc = mysqli_real_escape_string($conn,$_POST['k_desc']);       
        $release_year = $_POST['k_release_year'];
        $category = $_POST['category'];
        $kids_id = $_POST['kids_id'];
        $existingVideo = $_POST['existingVideo'];
        $newVideo = $_FILES['newVideo']['name'];
        $temp = $_FILES['newVideo']['tmp_name'];
        $location = "./uploads/videos/";
        $video = $location . $newVideo;
        move_uploaded_file($temp, $video);
        $existingImage = $_POST['existingImage'];
        $newImage = $_FILES['newImage']['name'];
        $temp = $_FILES['newImage']['tmp_name'];
        $location = "./uploads/kids/";
        $image = $location . $newImage;
        move_uploaded_file($temp, $image);

        if ($newImage=='') {
            $image = $existingImage;
        }
        if ($newVideo== '') {
            $video=$existingVideo;
        }
        $update = mysqli_query($conn, "UPDATE kids SET 
        kids_name='$kidsName', 
        kids_image='$image',
        kids_desc='$desc', 
        release_year=$release_year, 
        category_id=$category,
        video_src = '$video'
        WHERE kids_id=$kids_id");

        if ($update) {
            echo "alert('Record updated successfully!')";
            header("Location: ../index.php?kids=success"); 
        } else {
            echo "Records not updated successfully.";
            header("Location: ../index.php?kids=error");
        }
    } else {
        header("Location: ../index.php?kids=error");
    }
?>
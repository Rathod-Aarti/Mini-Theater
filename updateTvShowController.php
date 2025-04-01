<?php
include_once "../config/dbconnect.php";

if (isset($_POST['update'])) {
    $tvShowName = mysqli_real_escape_string($conn, $_POST['t_name']);
    $desc = mysqli_real_escape_string($conn, $_POST['t_desc']);
    $release_year = $_POST['t_release_year'];
    $category = $_POST['category'];
    $tvshow_id = $_POST['tvshow_id'];
    $existingVideo = $_POST['existingVideo'];
    $newVideo = $_FILES['newVideo']['name'];
    $temp = $_FILES['newVideo']['tmp_name'];
    $location = "./uploads/videos/";
    $video = $location . $newVideo;
    move_uploaded_file($temp, $video);
    $existingImage = $_POST['existingImage'];
    $newImage = $_FILES['newImage']['name'];
    $temp = $_FILES['newImage']['tmp_name'];
    $location = "./uploads/show/";
    $image = $location . $newImage;
    move_uploaded_file($temp, $image);

    if ($newImage == '') {
        $image = $existingImage;
    }
    if ($newVideo == '') {
        $video = $existingVideo;
    }
    $update = mysqli_query($conn, "UPDATE tvshow SET 
        tvshow_name='$tvShowName', 
        tvshow_image='$image',
        tvshow_desc='$desc', 
        release_year=$release_year, 
        category_id=$category,
        video_src = '$video'
        WHERE tvshow_id=$tvshow_id");

    if ($update) {
        echo "alert('Record updated successfully!')";
        header("Location: ../index.php?tvshow=success");
    } else {
        echo "Records not updated successfully.";
        header("Location: ../index.php?tvshow=error");
    }
} else {
    header("Location: ../index.php?tvshow=error");
}
?>
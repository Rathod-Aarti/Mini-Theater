<?php

    include_once "../config/dbconnect.php";
    
    $t_id=$_POST['record'];
    $query="DELETE FROM tvshow where tvshow_id='$t_id'";

    $data=mysqli_query($conn,$query);

    if($data){
        echo"Movie Item Deleted";
    }
    else{
        echo"Not able to delete";
    }
    
?>
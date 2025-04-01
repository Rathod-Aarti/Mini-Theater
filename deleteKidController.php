<?php

    include_once "../config/dbconnect.php";
    
    $k_id=$_POST['record'];
    $query="DELETE FROM kids where kids_id='$k_id'";

    $data=mysqli_query($conn,$query);

    if($data){
        echo"Movie Item Deleted";
    }
    else{
        echo"Not able to delete";
    }
    
?>
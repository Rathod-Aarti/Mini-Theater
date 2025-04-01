<?php

    include_once "../config/dbconnect.php";
    
    $m_id=$_POST['record'];
    $query="DELETE FROM movie where movie_id='$m_id'";

    $data=mysqli_query($conn,$query);

    if($data){
        echo"Movie Item Deleted";
    }
    else{
        echo"Not able to delete";
    }
    
?>
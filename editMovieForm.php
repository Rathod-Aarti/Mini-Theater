<div class="container p-5">
    <h4>Edit movie Detail</h4>
    <?php
        include_once "../config/dbconnect.php";
        $ID = $_POST['record'];
        $qry = mysqli_query($conn, "SELECT * FROM movie WHERE movie_id='$ID'");
        $numberOfRow = mysqli_num_rows($qry);
        if ($numberOfRow > 0) {
            while ($row1 = mysqli_fetch_array($qry)) {
                $catID = $row1["category_id"];
    ?>
    <form id="update-Items" action="./controller/updateMovieController.php" method="POST" enctype="multipart/form-data">
        <div class="form-group">
            <input type="text" name="movie_id" class="form-control" id="movie_id" value="<?=$row1['movie_id']?>" hidden>
        </div>
        <div class="form-group">
            <label for="name">Movie Name:</label>
            <input type="text" name="m_name" class="form-control" id="m_name" value="<?=$row1['movie_name']?>">
        </div>
        <div class="form-group">
            <label for="desc">Movie Description:</label>
            <input type="text" name="m_desc" class="form-control" id="m_desc" value="<?=$row1['movie_desc']?>">
        </div>
        <div class="form-group">
            <label for="price">Release Year:</label>
            <input type="number" name="m_release_year" class="form-control" id="m_release_year" value="<?=$row1['release_year']?>">
        </div>
        <div class="form-group">
            <label>Category:</label>
            <select name="category" id="category" class="form-control">
                <?php
                    $sql = "SELECT * from category WHERE category_id='$catID'";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<option value='" . $row['category_id'] . "'>" . $row['category_name'] . "</option>";
                        }
                    }

                    $sql = "SELECT * from category WHERE category_id!='$catID'";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<option value='" . $row['category_id'] . "'>" . $row['category_name'] . "</option>";
                        }
                    }
                ?>
            </select>
        </div>
        <div class="form-group">
            <img width="200px" height="150px" src="<?=$row1['movie_image']?>">
            <div>
                <label for="file">Choose Image:</label>
                <input type="text" name="existingImage" id="existingImage" class="form-control" value="<?=$row1['movie_image']?>" hidden>
                <input type="file" name="newImage" id="newImage" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <video src="<?=$row1['video_src']?>" controls="controls" height="150px" width="200px"></video>
            <div>
                <label for="file">Choose Video:</label>
                <input type="text" name="existingVideo" id="existingVideo" class="form-control" value="<?=$row1['video_src']?>" hidden>
                <input type="file" name="newVideo" id="newVideo" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <button id="update" type="submit" name="update" style="height:40px" class="btn btn-primary">Update Item</button>
        </div>
    </form>
    <?php
            }
        }
    ?>
</div>

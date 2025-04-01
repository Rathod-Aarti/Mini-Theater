
<script>
        function exportMovies() {
            const fileName = prompt("Enter the filename for export (without extension):", "Movies");
            if (fileName) {
                window.location.href = `./adminView/exportMovie.php?filename=${encodeURIComponent(fileName)}`;
            }
        }
</script>

  <h2>Movie Items</h2>
  <table class="table ">
    <thead>
      <tr>
        <th class="text-center">S.N.</th>
        <th class="text-center">Movie Image</th>
        <th class="text-center">Movie Name</th>
        <th class="text-center">Movie Description</th>
        <th class="text-center">Category Name</th>
        <th class="text-center" colspan="2">Release year</th>
        <th class="text-center" colspan="2">Action 
               <img onclick="exportMovies()" src="../admin_panel/adminView/exe.png" style="margin-left:15px;cursor: pointer;" height="30px" width="30px" alt="export">
          </th>
      </tr>
    </thead>
    <?php
    include_once "../config/dbconnect.php";
    $sql = "SELECT * from movie, category WHERE movie.category_id=category.category_id";
    $result = $conn->query($sql);
    $count = 1;
    if ($result->num_rows > 0) {
      while ($row = $result->fetch_assoc()) {
        ?>
        <tr>
          <td><?= $count ?></td>
          <td><img height='100px' src='<?= $row["movie_image"] ?>'></td>
          <td><?= $row["movie_name"] ?></td>
          <td style="max-width: 250px;"><?= $row["movie_desc"] ?></td>
          <td><?= $row["category_name"] ?></td>
          <td><?= $row["release_year"] ?></td>
          <td>
          <!-- Button trigger modal -->
          <button type="button" class="btn btn-secondary" onclick="movieView( '<?= $row['video_src'] ?>')" style="height:40px" data-toggle="modal" data-target="#myVideoModal">
    <i class="fa fa-video-camera"></i>
</button>
          </td>
          <td><button class="btn btn-primary" style="height:40px"
              onclick="movieEditForm('<?= $row['movie_id'] ?>')"> <i class="fa fa-edit"></i></button>
          </td>
          <td><button class="btn btn-danger" style="height:40px"
              onclick="deleteMovie('<?= $row['movie_id'] ?>')"><i class="fa fa-trash"></i></button>
          </td>
          
        </tr>
        <?php
        $count = $count + 1;
      }
    }
    ?>
  </table>

  <!-- Modal -->
  <div class="modal fade" id="myVideoModal" role="dialog" aria-labelledby="myVideoModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" style="max-width: 80%; max-height: 80vh; overflow: hidden;">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myVideoModalLabel">View Video</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body p-0" style="background: #000;">
        <video id="movieVideo" controls="controls" style="width: 100%; height: auto;">
          <source id="movieVideoSrc" src="" type="video/mp4">
          Your browser does not support the video tag.
        </video>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="height: 40px;">Close</button>
      </div>
    </div>
  </div>
</div>

  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-secondary " style="height:40px" data-toggle="modal" data-target="#myModal">
    Add Movie
  </button>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">New Movie Item</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <!-- <form  enctype='multipart/form-data' onsubmit="addItems()" method="POST"> -->
          <form enctype='multipart/form-data' action="./controller/addMovieController.php" method="POST">
            <div class="form-group">
              <label for="name">Movie Name:</label>
              <input type="text" class="form-control" name="m_name" id="m_name" required>
            </div>
            <div class="form-group">
              <label for="price">Release Year:</label>
              <input type="number" class="form-control" name="m_release_year" id="m_release_year" required>
            </div>
            <div class="form-group">
              <label for="qty">Description:</label>
              <input type="text" class="form-control" name="m_desc" id="m_desc" required>
            </div>
            <div class="form-group">
              <label>Category:</label>
              <select id="category" name="category" class="form-control">
                <option disabled selected>Select category</option>
                <?php

                $sql = "SELECT * from category";
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
              <label for="file">Choose Image:</label>
              <input type="file" class="form-control-file" name="file" id="file" accept="image/*">
            </div>
            <div class="form-group">
              <label for="video">Choose Video:</label>
              <input type="file" class="form-control-file" name="video" id="video" accept="video/*">
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-secondary" name="upload" id="upload" style="height:40px">Add
                Item</button>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" style="height:40px">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="./assets/js/ajaxWork1.js"></script>
<script>
  function movieView(videoSrc) {
    // Update the video source dynamically
    document.getElementById('movieVideoSrc').src = videoSrc;
    console.log(videoSrc);
    
    // Reload the video to ensure it loads the correct video when the modal opens
    var video = document.getElementById('movieVideo');
    video.load();
}
</script>
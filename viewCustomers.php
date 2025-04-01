<div >
  <h2>All Customers</h2>
  <button class="btn btn-secondary" style="height:40px;width:150px;float: right;margin-right: 10px;margin-bottom: 10px" data-toggle="modal" data-target="#myModal">Add Admin</button>
  <table class="table ">
    <thead>
      <tr>
        <th class="text-center">S.N.</th>
        <th class="text-center">Username </th>
        <th class="text-center">Email</th>
        <th class="text-center">Password</th>
        <th class="text-center">Joining Date</th>
      </tr>
    </thead>
    <?php
      include_once "../config/dbconnect.php";
      $sql="SELECT * from users";
      $result=$conn-> query($sql);
      $count=1;
      if ($result-> num_rows > 0){
        while ($row=$result-> fetch_assoc()) {
           
    ?>
    <tr>
      <td style="width:400px"><?=$count?></td>
      <td style="width:400px"><?=$row["username"]?> </td>
      <td style="width:400px"><?=$row["email"]?></td>
      <td style="width:400px">Encrypted Password</td>
      <td style="width:400px"><?=$row["created_date"]?></td>
    </tr>
    <?php
            $count=$count+1;
           
        }
    }
    ?>
  </table>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">New Customer/Admin</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
        <form enctype="multipart/form-data" action="./controller/addCustomerController.php" method="POST" onsubmit="validateForm(event)">
      <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" class="form-control" name="username" id="username" required>
      </div>
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" name="email" id="email" required>
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" class="form-control" name="password" id="password" required>
      </div>
      <div class="form-group">
        <label for="confirmpassword">Confirm Password:</label>
        <input type="password" class="form-control" name="confirmpassword" id="confirmpassword" required>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>

    </div>
  </div>
  <script>
    function validateForm(e) {
      const password = document.getElementById('password').value;
      const confirmPassword = document.getElementById('confirmpassword').value;
      if (password !== confirmPassword) {
        alert('Passwords do not match!');
        e.preventDefault();
      }
    }
  </script>

<?php  
session_start();
include_once("./Action/conn.php");

$read = mysqli_query($conn, "SELECt * FROM  complain");
$count_row = mysqli_num_rows($read);

?>



<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mosquito Data</title>
  <link rel="stylesheet" href="./Asset/main.css">
  <link rel="stylesheet" href="./Asset/style.css">
</head>

<body>
  <div class="container">
    <div class="row text-center bg-success">
      <h1>Complain List</h1>
    </div>
    <div class="row mt-3">
      <div class="col-md-12 shadow">
        <div class="row text-center bg-info">
          <h4>Find Complain</h4>
        </div>
        <div class="form">
          <form method="POST" action="./Action/find.php">
            <div class="inputgroup">
              <input type="text" name="sid" class="form-control" placeholder="Enter complainer mobile no">
            </div>
            <div class="inputgroup">
              <input type="submit" class="form-control submitbtn" value="Show Complain">
            </div>
          </form>
        </div>
      </div>
      <div class="col-md-6 p-0">
        <?php 
        if(isset($_SESSION["serchid"])){
          $profilerow = mysqli_query($conn, "SELECT * FROM  complain WHERE name='".$_SESSION["serchid"]."'");
          $profile = $profilerow->fetch_assoc();
          unset($_SESSION["serchid"]);
        }
        
        ?>
        <div class="profile">
          <div class="text <?php if(isset($profile["name"])) echo"show";  ?>">
            <div class="item">
              <strong>Name : <?php if(isset($profile["name"]))echo $profile["name"]; ?></strong>
            </div>
            <div class="item">
              <strong>Email : <?php if(isset($profile["email"]))echo $profile["email"]; ?></strong>
            </div>
            <div class="item">
              <strong>Location : <?php if(isset($profile["location"]))echo $profile["location"]; ?></strong>
            </div>
          </div>
          
        </div>
      </div>
    </div>





    <div class="row" style="margin-top:50px">
      <div class="col-md-12 shadow">
        <div class="row text-center bg-info">
          <h4>List of Complain</h4>
        </div>
        <div class="row">
          <div class="col-md-12">
            <?php
              if (isset($_SESSION["create_message"])) {
                echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>'. $_SESSION["create_message"].'</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>';
              unset($_SESSION["create_message"]);
              }
            ?>
          </div>
        </div>
        
        </div>
      </div>
      <div class="col-md-12">
        <table class="table table-bordered">
          <thead class="thead-dark">
            <tr>
              <th scope="col">Image</th>
              <th scope="col">Name</th>
              <th scope="col">Location</th>
              <th scope="col">action</th>
            </tr>
          </thead>
          <tbody>
            <?php   
              if(mysqli_num_rows($read) > 0){
                while ($row = $read->fetch_assoc()){
                  ?> 
                  
                  <tr>
                    <td>
                      <img src="../practice/./image/<?php echo $row["photo"]; ?>" alt=""  width="200px" height="200px">
                    </td>
                    <td><?php echo $row["name"]; ?></td>
                    <td><?php echo $row["location"]; ?></td>
                    <td><a href="./Action/delete.php/<?php echo $row["id"]; ?>">Delete</a></td>
                  </tr>
                  
                  <?php
                } 
              }
            ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
  </div>
  </div>
  
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
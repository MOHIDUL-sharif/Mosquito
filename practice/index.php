<?php
session_start();
include_once("./Action/conn.php");

$read = mysqli_query($conn, "SELECt * FROM  users");
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

<div class="navbar">
  <a href="http://localhost/public/">Home</a>
</div>


<body>
  <div class="container">
    <div class="row text-center bg-success">
      <h1>Complain Box</h1>
    </div>
    <div class="row mt-3">
      <!-- <div class="col-md-6 shadow">
        <div class="row text-center bg-info">
          <h4>Find Student</h4>
        </div>
        <div class="form">
          <form method="POST" action="./Action/find.php">
            <div class="inputgroup">
              <input type="text" name="sid" class="form-control" placeholder="Enter student id">
            </div>
            <div class="inputgroup">
              <input type="submit" class="form-control submitbtn" value="Show Info">
            </div>
          </form>
        </div>
      </div> -->
      <div class="col-md-6 p-0">
        <?php
        if (isset($_SESSION["serchid"])) {
          $profilerow = mysqli_query($conn, "SELECT * FROM  users WHERE id='" . $_SESSION["serchid"] . "'");
          $profile = $profilerow->fetch_assoc();
          unset($_SESSION["serchid"]);
        }

        ?>
        <div class="profile">
          <div class="text <?php if (isset($profile["name"])) echo "show";  ?>">
            <div class="item">
              <strong>Name : <?php if (isset($profile["name"])) echo $profile["name"]; ?></strong>
            </div>
            <div class="item">
              <strong>Email : <?php if (isset($profile["email"])) echo $profile["email"]; ?></strong>
            </div>
            <div class="item">
              <strong>City : <?php if (isset($profile["city"])) echo $profile["city"]; ?></strong>
            </div>
          </div>
          <div class="image shadow">
            <img src="./image/<?php if (isset($profile["photo"])) echo $profile["photo"];
                              else echo "complain.jpg"; ?>" alt="">
          </div>
        </div>
      </div>
    </div>


    <div class="row" style="margin-top:50px">
      <div class="col-md-12 shadow">
        <div class="row text-center bg-info">
          <h4>Write Complain</h4>
        </div>
        <div class="row">
          <div class="col-md-12">
            <?php
            if (isset($_SESSION["create_message"])) {
              echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>' . $_SESSION["create_message"] . '</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>';
              unset($_SESSION["create_message"]);
            }
            ?>
          </div>
        </div>
        <div class="form">
          <form method="POST" action="./Action/insert.php" enctype="multipart/form-data">
            <div class="inputgroup">
              <div class="level">
                <strong>Image : </strong>
              </div>
              <input type="file" name="photo" class="form-control" />
            </div>
            <div class="inputgroup">
              <div class="level">
                <strong>Complainer Name : </strong>
              </div>
              <input type="text" name="name" class="form-control" placeholder="Complainer name">
            </div>
            
            <div class="inputgroup">
              <div class="level">
                <strong>Complainer email : </strong>
              </div>
              <input type="text" name="email" class="form-control" placeholder="Complainer email">
            </div>
            <div class="inputgroup">
              <div class="level">
                <strong>Mobile No: </strong>
              </div>
              <input type="text" name="mobile" class="form-control" placeholder="Enter Mobile No">
            </div>
            <div class="inputgroup">
              <div class="level">
                <strong>location : </strong>
              </div>
              <input type="text" name="location" class="form-control" placeholder="Enter Complain Location">
            </div>
            <div class="inputgroup">
              <div class="level">
              </div>
              <input type="submit" class="form-control submitbtn" value="Submit Complain">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

<div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
        <p>&copy; 2023 ,PSTU_WebWizards All rights reserved.</p>
      </div>

</html>
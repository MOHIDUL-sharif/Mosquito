
<?php  
session_start();
include_once("./Action/conn.php");

$read = mysqli_query($conn, "SELECt * FROM  detection");
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
      <h1>Mosquito Identification and Classification using ML</h1>
    </div>

    <div class="row" style="margin-top:50px">
      <div class="col-md-6 shadow">
        <div class="row text-center bg-info">
          <h4>Insert Image</h4>
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
              </div>
              <input type="submit" class="form-control submitbtn" value="Insert Image">
            </div>
          </form>
        </div>
      </div>
      <div class="col-md-6">
        <table class="table table-bordered">
          <thead class="thead-dark">
            <tr>
              <th scope="col">Image</th>
              <th scope="col">Result</th>
            </tr>
          </thead>
          <tbody>
            <?php   
              if(mysqli_num_rows($read) > 0){
                while ($row = $read->fetch_assoc()){
                  ?> 
                  
                  <tr>
                    <td>
                      <img src="./image/<?php echo $row["photo"]; ?>" alt=""  width="150px" height="150px">
                    </td>
                    <td>Dengue Detected</td>
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
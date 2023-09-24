<?php  
session_start();
include_once("../Action/conn.php");
  if($conn){
  }else{}



  $name = $_POST['name'];
  $email = $_POST['email'];
  $reg = $_POST['reg'];
  $city = $_POST['city'];

  $photo = $_FILES['photo']['name'];

  $query = "INSERT INTO detection (id,reg,name,email, photo, city) VALUES ('$id','$reg','$name','$email','$photo','$city')";


  // echo $name;  echo $email;   echo $id;  echo $reg; echo $city;

  $result = mysqli_query($conn, $query);

  if ($result) {
    move_uploaded_file($_FILES['photo']['tmp_name'], "../image/$photo");
    $_SESSION['create_message'] = "Image Insert Successfully";
    header('location:  ../index.php');
  } else {
      $error = "Data Insert Unsuccessfull";
  }

?>
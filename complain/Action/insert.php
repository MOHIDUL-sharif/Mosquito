<?php  
session_start();
include_once("../Action/conn.php");
  if($conn){
  }else{}



  $name = $_POST['name'];
  $email = $_POST['email'];
  $id = $_POST['id'];
  $reg = $_POST['reg'];
  $city = $_POST['city'];

  $photo = explode('.', $_FILES['photo']['name']);
  $photo_ex = end($photo);
  $photo_name = $id . '.' . $photo_ex;

  $query = "INSERT INTO users (id,reg,name,email, photo, city) VALUES ('$id','$reg','$name','$email','$photo_name','$city')";


  // echo $name;  echo $email;   echo $id;  echo $reg; echo $city;

  $result = mysqli_query($conn, $query);

  if ($result) {
    move_uploaded_file($_FILES['photo']['tmp_name'], "../image/$photo_name");
    $_SESSION['create_message'] = "Student Created Successfully";
    header('location:  ../index.php');
  } else {
      $error = "Data Insert Unsuccessfull";
  }

?>
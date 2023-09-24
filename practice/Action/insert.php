<?php  
session_start();
include_once("../Action/conn.php");
  if($conn){
  }else{}



  $name = $_POST['name'];
  $email = $_POST['email'];
  $mobile = $_POST['mobile'];
  $city = $_POST['location'];

  $photo = explode('.', $_FILES['photo']['name']);
  $photo_ex = end($photo);
  $photo_name = $email . '.' . $photo_ex;

  $query = "INSERT INTO complain (mobile,location,name,email, photo) VALUES ('$mobile','$city','$name','$email','$photo_name')";


  // echo $name;  echo $email;   echo $id;  echo $reg; echo $city;

  $result = mysqli_query($conn, $query);

  if ($result) {
    move_uploaded_file($_FILES['photo']['tmp_name'], "../image/$photo_name");
    $_SESSION['create_message'] = "Complain Submittedd Successfully";
    header('location:  ../index.php');
  } else {
      $error = "Data Insert Unsuccessfull";
  }

?>
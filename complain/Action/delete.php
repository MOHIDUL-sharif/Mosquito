<?php  
session_start();
include_once("../Action/conn.php");



//   $name = $_GET['name'];

  $parts = explode("/", $_SERVER['REQUEST_URI']);
  $parts = end($parts);

//   $photo = explode('.', $_FILES['photo']['name']);
//   $photo_ex = end($photo);
//   $photo_name = $id . '.' . $photo_ex;

  $query = "DELETE FROM `complain` WHERE id=$parts";
    $result = mysqli_query($conn, $query);
  header('location:  ../../index.php');


//   // echo $name;  echo $email;   echo $id;  echo $reg; echo $city;

//   $result = mysqli_query($conn, $query);

//   if ($result) {
//     move_uploaded_file($_FILES['photo']['tmp_name'], "../image/$photo_name");
//     $_SESSION['create_message'] = "Student Created Successfully";
//     header('location:  ../index.php');
//   } else {
//       $error = "Data Insert Unsuccessfull";
//   }

?>
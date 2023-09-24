<?php  
session_start();
include_once("../Action/conn.php");

$name = $_POST["name"];

$_SESSION["serchid"] = $id;
header('location:  ../index.php');
?>
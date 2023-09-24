<?php  
session_start();
include_once("../Action/conn.php");

$id = $_POST["sid"];

$_SESSION["serchid"] = $id;
header('location:  ../index.php');
?>
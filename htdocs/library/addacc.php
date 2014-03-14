<?php 
include("conn.php");
$name = $_GET["name"];
$phone = $_GET["phone"];
$email = $_GET["email"];
$address = $_GET["address"];
$description = $_GET["description"];
$pw = $_GET["pw"];
$sql = "insert into patron values('', '$name' , '$phone' , '$email' ,'$address','$description','$pw')";
echo $sql;
mysql_query($sql);
 ?>
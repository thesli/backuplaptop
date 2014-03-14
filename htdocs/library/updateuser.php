<?php 
include("conn.php");
$id = $_GET["id"];
$name = mysql_real_escape_string($_GET["name"]);
$phone = $_GET["phone"];
$email = $_GET["email"];
$address = $_GET["address"];
$description = mysql_real_escape_string($_GET["description"]);
$pw = $_GET["pw"];
$sql = "update patron set name='$name',phone='$phone',email='$email',description='$description',address='$address',password='$pw' where id=$id";
echo $sql;
mysql_query($sql);
?>
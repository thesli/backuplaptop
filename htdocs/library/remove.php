<?php 
include("conn.php");
$id = $_GET["id"];
$sql = "delete from patron where id= " . $id;
$r = mysql_query($sql);
header("location:index.php");
 ?>
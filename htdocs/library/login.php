<?php
include("conn.php");
$name = $_GET["name"];
$pw = $_GET["pw"];
$sql = "select * from patron where name='$name' and password='$pw'";
// echo $sql;
$r = mysql_query($sql);
if(mysql_num_rows($r)!=0){
	echo("your login is successful");
}else{
	echo("your login is not successful try again");
}
 ?>
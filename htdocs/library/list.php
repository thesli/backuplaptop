
<div id="list">here are some list things

<?php 
include("conn.php");
// echo "something";
$sql = "select * from patron";
$r = mysql_query($sql);
echo "<table>";
echo "<th>id</th><th>name</th><th>phone</th><th>email</th><th>address</th><th>description</th><th>password</th><th>remove</th><th>update</th>";
while($row = mysql_fetch_assoc($r)){
	// echo "<pre>";
	// print_r($row);
	// echo "</pre>";
	$id = $row["id"];
	$t = $row["id"];
	$name = $row["name"];
	$phone = $row["phone"];
	$email = $row["email"];
	$password = $row["password"];
	$address = $row["address"];
	$description = $row["description"];
	echo "<tr><td>" . $id . "</td><td>" . $name . "</td><td>" . $phone . "</td><td>" . $email . "</td><td>" . $address  . "</td><td>" . $description . "</td><td>" . $password . "</td><td class='rmv'>";
	echo "<a href='remove.php?id=" . $id . "'>remove</a></td><td>" . '<a href="update.php?id=' . $id . '">Update</a>' .  "</td></tr>";
	// echo "<tr>";
}
echo "</table>";

 ?>
 </div>

 
<?php 
$id = $_GET['id'];
include("conn.php");
$sql = "select * from patron where id = " . $id;
$r = mysql_query($sql);
while($row = mysql_fetch_array($r)){
	echo "<input value='". $row[0] . "' class='id' disabled>";
	echo "<input value='". $row[1] . "' class='name'>";
	echo "<input value='". $row[2] . "' class='phone'>";
	echo "<input value='". $row[3] . "' class='email'>";
	echo "<input value='". $row[4] . "' class='address'>";
	echo "<input value='". $row[5] . "' class='description'>";
	echo "<input value='". $row[6] . "' class='pw'>";
}
 ?>
 <input type="submit" value="alter user" class="btn">
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
 <script type="text/javascript">
$(".btn").click(function(){
	var id = $(".id").val();
	var name = $(".name").val();
	var phone = $(".phone").val();
	var email = $(".email").val();
	var address = $(".address").val();
	var description = $(".description").val();
	var pw = $(".pw").val();
	$.ajax({
		type:"GET",
		url: "updateuser.php?id=" + id +"&name=" + name + "&phone=" +phone + "&email=" + email + "&address=" + address + "&description=" + description + "&pw=" + pw
	}).done(alert("done updated user"));
});
 </script>
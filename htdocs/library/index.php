<html>
<head>
	<title>Patron Login System</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">

</head>

<body>
	<h1>Patron Login System</h1>
<?php include("header.php"); ?>
<form>
<table>
<tr><td>Name:</td><td><input name="name" class="name" type="text"></input></td></tr>
<tr><td>Password:</td><td><input name="password" class="password" type="password"></input></td></tr>
<tr><td></td><td><input type="submit" value="login" class="lbtn"></td></tr>
</table>
</form>
<div class="content">Create a Database called "library" or edit the conn.php 's mysql_sql and then load the patron.sql into the "library" database</div>
</body>
<script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=2"></' + 'script>')</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script><script type="text/javascript">
</script>
<script type="text/javascript">
$(".list").click(function(){
	$(".content").load("list.php");
});
$(".remove").click(function(){
	$(".content").load("list.php");
});
$(".add").click(function(){
	$(".content").load("add.php");
});
$(".lbtn").click(function(){
	var name = $(".name").val();
	var pw = $(".password").val();
	window.open("login.php?name=" + name + "&pw=" +pw );
});
</script>

</html>


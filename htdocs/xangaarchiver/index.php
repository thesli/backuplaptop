<?
//Xanga Archiver Open Source 0.14
$ver='0.14';

require("lib/UltimateSocksFunction.inc.php");
require("lib/strdata.inc.php");

$header='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="CalendarControl.js" language="javascript"></script>
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<title>Xanga Archiver Open Source '.$ver.'</title>
</head>
<body>
<h1>Xanga Archiver Open Source '.$ver.'</h1>';

$footer='</body>
</html>';

if($_GET['action']=='logout'){
	setcookie("u");
	setcookie("x");
	setcookie("y");
	setcookie("xusername");
	header("Location: index.php");
}
elseif($_GET['action']=='login' && $_POST['username'] && $_POST['password']){
	require("lib/loginxanga.inc.php");
	loginxanga($_POST['username'],$_POST['password']);
	header("Location: index.php");
}elseif($_COOKIE['xusername']){
	print $header;
	print "<b>Step 2 - Select region</b>";
	print " (You are logged in as ".$_COOKIE['xusername'].") <a href=\"index.php?mode=backup&action=logout\">[Logout]</a><br><br>";
	print '<form action="make_archive.php" name="dateForm" method="post"><input name="owner" type="hidden" value="yes"><input name="range" type="radio" value="all" CHECKED>Entire blog<br><br><input name="range" type="radio" value="region"> '.$const["DateRange"].' <input name="fromdate" type="text" onfocus="showCalendarControl(this);document.dateForm.elements[2].checked=true" size="10" value="'.date("m/d/Y", (time()-2592000)).'"> - <input name="todate" type="text" onfocus="showCalendarControl(this);document.dateForm.elements[2].checked=true" size="10" value="'.date("m/d/Y", time()).'"><br><br><input type="submit" value="Make Archive"><br><br>';
	print $footer;
}else{
	print $header;
	print "<b>Step 1 - Login</b><br>";
	print '<form action="index.php?mode=backup&action=login" method="POST">Username<input type="text" name="username"><br>Password<input type="password" name="password"><br><input type="submit" value="Login"></form>';
	print $footer;
}
?>
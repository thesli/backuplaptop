<html>
<head>
    <meta charset="BIG5">
</head>
</html>
<?php
header('Content-Type: text/html; charset=utf-8');
$url = $_GET["url"];
include("func.php");
if(isset($url)){
//getStandardSQLData($url);
    getCSV($url);
}

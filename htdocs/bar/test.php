<?php 
include("func.php");
$n = array("http://hk.yahoo.com","http://engadget.com","google.com.hk","www.ign.com","www.google.com.hk/search?newwindow=1&safe=off&site=&source=hp&q=php+array&oq=php+array&gs_l=hp.3..0l10.2279.3391.0.3570.9.6.0.3.3.0.86.345.6.6.0...0.0...1c.1.9.hp.u-TUlon-Bs0","ibm.com","apple.com");
// $urllist = array("hk.yahoo.com" , "engadget.com" , "google.com.hk" , "pconline.com.cn");
echo "</br>";
for ($i=0; $i <  sizeof($n); $i++) { 
	 echo $n[$i];
	 echo "</br>";
	echo getFavIcon($n[$i]);
	echo getWebSnapshot($n[$i]);
}
//$arr = getArrayOfListOfLinksAndText("http://engadget.com");
////echo $arr[1][1];
//echo "<table>";
//for($i=0;$i<sizeof($arr);$i++){
//    echo "<tr>";
//    echo "<td>" . $arr[$i][0] . "</td>";
//    echo "<td>" . getFavIcon($arr[$i][1]) . getWebSnapshot($arr[$i][1]) . $arr[$i][1]."</td>";
//    echo "</tr>";
//}
//
//echo "</table>";
//getTheAnchorTextAndLinks($n[1]);
//echo "<pre>";
//print_r($arr);
//echo "</pre>";
// getWebSnapshot($n[4]);
?>

<html>
<head>
    <title>Fuck!!</title>
</head>
<body>
<a href=""></a>

</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">

</script>
</html>

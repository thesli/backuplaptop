
 <html>
 <head>
 	<title></title>
 	<style type="text/css">
	div{
	display:inline-block;
	width:3px;
	height:3px;
	/*border-color:black;*/
	/*border-style: solid;*/
	}
	.black{
		background-color: black;
	}
</style>
 </head>
 <body>

<?php 
$first=0;
$second=1;
$a = array();
for ($i=0; $i <500 ; $i++) { 
	$final =$first + $second;
	$first = $second;
	$second = $final;
	$a[$i]=$final;
	if($i%2 == 0){
	for ($j=0; $j <$final ; $j++) { 
		echo "<div class = 'black'></div>";
		}
	}else{
	for ($j=0; $j <$final ; $j++) { 
		echo "<div></div>";
		}
	}
}

 ?>
 <?php 
 	phpinfo([what=INFO_ALL]);
  ?>
 </body>
 </html>
<style type="text/css">
div{
	width:10px;
	height:10px;
	position:block-inline;
	background-color: hsl(100,1,1);
}
</style>
<div></div>
<?php 

for ($i=0; $i <360 ; $i++) { 
	
	echo "<div style='background-color:hsl($i,100%,1);'></div>";

}

 ?>
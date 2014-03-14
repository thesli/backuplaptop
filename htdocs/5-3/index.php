<html>
<head>
	<title></title>
</head>
<style type="text/css">
.a{
	border-color: red;
	width: 500px;
	height: 500px;
	border-style: solid;
	border-width: 1px;

}
</style>
<body>
<div class="a">srsly</div>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(".a").animate({
	"border-left-width" : "1000px"},1000);
	console.log("something");
});
</script>
</body>
</html>
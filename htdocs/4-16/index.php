<!DOCTYPE html>

<html>
<head>
	<title></title>
</head>
<style type="text/css">
body{
	background-color: #222;
}
.black{
	background-color: #333;
	width: 500px;
	height: 500px;
}
.title{
	border-bottom-style: dashed;
	text-align: center;
}
.content{
	min-width: 200px;
	overflow:scroll;
}
h2{
	border-left-style: solid;
	border-left-color:yellow;
	padding-left:45px;
	margin-left:5px;
	position: relative;
}
.circle{
	border-radius: 50%;
	border-style: solid;
	border-width: 1px;
	border-color:grey;
	opacity:0.2;
	background-color: red;
	width:200px;
	height:200px;
	text-align: center;
	display:inline-block;
	background-image: url("img/st-stephens.jpg");
	margin:20px;
	background-position: 100px 100px;
}
::-moz-selection{
	background-color: red;
	color:white;
}
.wrapper{
	left:25%;
	position:relative;
}


</style>
<body>
<div class="wrapper">
<div class="black">
<h1 class="title">Title</h1>
	<div class="content">
		<h2>This two days I 've been working</h2>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
	</div>
</div>
</div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	
	// alert("Hello");

</script>
<script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=2"></' + 'script>')</script>
</html>
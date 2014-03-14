
<html>
<head>
	<title></title>
	<style type="text/css">
	.a{
		width:50px;
		height:50px;
		border-style: groove;
		border-top-left-radius: 5px;
		border-top-right-radius: 5px;
		display: inline-block;
		text-align: center;
	}
	.b{
		width:50px;
		height:50px;
		border-style: groove;
		border-top-left-radius: 5px;
		border-top-right-radius: 50px;
		display: inline-block;
		text-align: center;
	}
	.c{
		width:50px;
		height:50px;
		border-style: solid;
		border-color: black;
		background-color: black;
		border-top-left-radius: 25px;
		border-top-right-radius: 25px;
		border-bottom-right-radius: 25px;
		border-bottom-left-radius: 25px;
		display: inline-block;
		text-align: center;
	}
	a{
		color:blue;
	}
	a:focus{
		color:green;
	}
	::selection{
		color:red;
		background-color:yellow;
	}
	.rect{
		width:500px;
		height:200px;
		border-color:#222;
		border-style:solid;
		opacity:0.5;
	}
	.button{
		margin:10px;
		bottom:0;
		width:50px;
		height:20px;
		border-color:grey;
		border-style:dotted;
		position: relative;	
		text-align: center;
		left:80%;
		top:80%;
		position:relative;
	}
	span{
		right:50px;
		color:red;
	}
	.rect{
		left:50px;
	}

	</style>
</head>
<body>

<a href="a.php"><div class="a">A</div></a>
<a href="b.php"><div class="b">B</div></a>
<a href="c.php"><div class="c">C</div></a>
<div>

<div class="rect">
<input type="radio" name="gender" value="BadSpecies">Male</input>
<div><input type="radio" name="gender" value="GoodSpecies">Female</input></div>
<div><input type="radio" name="gender">Shemale</input></div>
<div><input type="submit"></div>
	<div class="button"><span>abcde</span></div>

</div>

</div>

</body>
<script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=2"></' + 'script>')</script>
</html>
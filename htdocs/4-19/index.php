<!doctype html>
<html>
<head>
	<title>4-19</title>
	<style type="text/css">
		.abc>ul>li>a{
			color:red;
		}
		#menu{
			border-color: red;
			border-style: dotted;
			border-width: 1px;
		}
		#menu>ul{
			/*list-style-image: url("img/tower.jpg");*/
			list-style-position: outside;
			list-style: armenian;
		}
		#menu>ul>li>a>span{
			background-image: url("img/tower.jpg");
			background-position: bottom;
			background-repeat: no-repeat;
			color:green;
			background-color: rgba(200,200,200,0.5);
			opacity: 0.5;
		}
		.eclipse{
			background-color: red;
			border-radius: 100px/50px;
			width: 100px;
			height: 50px;
		}
		.wtf div{
			background-color: pink;
			width: 3em;
			border-bottom: dotted;
		}
		.wtf div:hover{
			background-color: green;
		}
		.wtf div{
			color:white;
			font-size: 10em;
			text-align: center;
		}
		.wtf ul{
			list-style: none;

		}
		li>div{
			display:inline;
		}
		.topElement{
			border-top: dotted;
			border-top-color: white;
		}
	</style>
</head>
<body>
<div id="menu">
	<ul>
		<li><a href="#"><span>IT</span></a></li>
		<li><a href="#"><span>Bussines</span></a></li>
		<li><a href="#"><span>Design</span></a></li>
		<li><a href="#"><span>HR</span></a></li>
	</ul>
	<ol>
		<li><a href="#">IT</a><ol>
		<li><a href="#">IT</a><ol>
		<li><a href="#">IT</a></li>
		<li><a href="#">Bussines</a></li>
		<li><a href="#">Design</a></li>
		<li><a href="#">HR</a></li>
	</ol></li>
		<li><a href="#">Bussines</a></li>
		<li><a href="#">Design</a></li>
		<li><a href="#">HR</a></li>
	</ol></li>
		<li><a href="#">Bussines</a></li>
		<li><a href="#">Design</a></li>
		<li><a href="#">HR</a></li>
	</ol>
	<div class="eclipse">This is with /  you get the fucking eclipse</div>	
</div>
<div class="wtf">
<ul>
<li><div class="topElement">abc</div></li>
<li><div>cde</div></li>
<li><div>fgh</div></li>
<li><div>ijk</div></li>
<li><div>lmn</div></li>
<li></li>
</ul>


</div>
</body>
<script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=2"></' + 'script>')</script>
</html>
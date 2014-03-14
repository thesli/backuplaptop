<html>
<head>
	<title></title>
	<style type="text/css">
	a{
		height: 20px;
		width: 50px;
	}
	#k1{
		height:50px;
		padding:20px;
	}
	#k2{
		float:left;
	}
	img{
		/*background-image: url("img/1.png");*/
	}
	</style>
</head>

<body>
<div id="k1">
	<h1 id="k2">ABC company</h1>
	<a href="#">Somewhere it goes</a>
	<img src="img/apache_pb.gif" id="wtf">
	<button id="something">Something here</button>
</div>


</body>
<script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=2"></' + 'script>')</script>
<script type="text/javascript">
		var btn =document.getElementById("something");
		var d =document.getElementById("wtf");
		btn.onclick = function(){
			if(d.src!="img/1.png"){
				changePhoto();
			}else{
				d.src = "img/apache_pb.gif";
			}
			

		}
		function changePhoto(){
			
			d.src = "img/1.png";
			alert("shit");
		}


</script>
</html>
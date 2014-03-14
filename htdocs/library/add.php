<p>name:<input type="text" name="name" class="name"></p>
<p>phone:<input type="text" name="phone" class="phone"></p>
<p>email:<input type="text" name="email" class="email"></p>
<p>address:<input type="text" name="address" class="address"></p>
<p>description:<input type="text" name="description" class="description"></p>
<p>password:<input type="text" name="pw" class="pw"></p>
<p><input type="submit" value="add user" class="adduser"></p>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">

$(".adduser").click(function(){
var name = $(".name").val();
var phone = $(".phone").val();
var email = $(".email").val();
var address = $(".address").val();
var description = $(".description").val();
var pw = $(".pw").val();
$.ajax({
	type:"GET",
	url:"addacc.php?name=" + name + "&phone=" +phone + "&email=" + email + "&address=" + address + "&description=" + description + "&pw=" + pw
}).done(function(){
	alert("user added");
});
});


</script>

express = require("express")
io = require("socket.io")
m = require("mongoskin").db(
	"http://localhost:28017/pella",
	safe:false
	).collection("guys")
app = new express()

app.use(express.static(__dirname))

app.get("/",
	(req,res)->
		res.sendfile(__dirname+"/views/index.html")
	)

app.listen(80)

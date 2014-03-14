path = require("path")
express = require("express")
app = express()
m = require("mongoskin").db("localhost/new",{safe:false}).collection("guys")
e = require("mongoskin").db("localhost/new",{safe:false}).collection("events")
io = require("socket.io").listen(8888)
# Apparently needs to be used in such that req.body automatically gets parsed
# properly.
ObjectID = require("mongodb").ObjectID;
app.use express.bodyParser()

# First looks for a static file: index.html, css, images, etc.
app.use "/app", express.compress()
app.use "/app", express.static(path.resolve(__dirname, "../app"))
app.use "/app", (req, res, next) ->
  res.send 404

#app.use express.logger() # Log requests to the console

# Setup models and controllers.
# Both Model and Controller is kept in same file for simplicity sake
#users = require("./controllers/users")
#users.setup app, mongoose

# This is the route that sends the base index.html file all other routes are
# for data only, no server-side views here.
app.all "/", (req, res) ->
  res.sendfile "index.html",
    root: "../app"


port = process.env.PORT or 80
app.listen port
console.log "############DEV HOST ON PORT" + port + "#################"


###############debug isOnline############
logOnline = ()->
  console.log("########isOnline is now:##########################")
  console.log(isOnline)
  console.log("#################################################")

################debug is Online###########

###TESTDB###

evtTemp = events:[
  {
    title:"小當家．友伴支援計劃 2013 義工訓練工作坊",
    start: new Date("2013/6/11 7:30")
    end: new Date("2013/6/11 9:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "九龍深水埗"
    backgroundColor:"blue",
#          borderColor:"white"
  },
  {
    title:"小當家．友伴支援計劃 2013 義工訓練工作坊",
    start: new Date("2013/6/18 7:30")
    end: new Date("2013/6/18 9:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "九龍深水埗"
    backgroundColor:"blue",
  },
  {
    title:"小當家．友伴支援計劃 2013 義工訓練工作坊",
    start: new Date("2013/6/25 7:30")
    end: new Date("2013/6/25 9:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "九龍深水埗"
    backgroundColor:"blue",
  }
  {
    title:"小當家．友伴支援計劃 2013 義工訓練工作坊",
    start: new Date("2013/7/2 7:30")
    end: new Date("2013/7/2 9:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "九龍深水埗"
    backgroundColor:"blue",
  }
  {
    title:"小當家．友伴支援計劃 2013 [必須]",
    start: new Date("2013/7/20 10:00")
    end: new Date("2013/7/20 12:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "待定"
    backgroundColor:"green",
  }
  {
    title:"小當家．友伴支援計劃 2013 [必須]",
    start: new Date("2013/7/30 10:00")
    end: new Date("2013/8/3 12:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "待定"
    backgroundColor:"green",
  }
  {
    title:"小當家．友伴支援計劃 2013 [必須]",
    start: new Date("2013/8/10 10:00")
    end: new Date("2013/8/10 12:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "待定"
    backgroundColor:"green",
  }
  {
    title:"小當家．友伴支援計劃 2013 [必須]",
    start: new Date("2013/8/13 10:00")
    end: new Date("2013/8/13 12:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "待定"
    backgroundColor:"green",
  }
  {
    title:"小當家．友伴支援計劃 2013[可自由選擇出席]",
    start: new Date("2013/7/13 10:00")
    end: new Date("2013/7/13 12:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "待定"
    backgroundColor: "powderblue",
  }
  {
    title:"小當家．友伴支援計劃 2013[可自由選擇出席]",
    start: new Date("2013/7/16 10:00")
    end: new Date("2013/7/16 12:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "待定"
    backgroundColor:"powderblue",
  }
  {
    title:"小當家．友伴支援計劃 2013[可自由選擇出席]",
    start: new Date("2013/7/23 10:00")
    end: new Date("2013/7/23 12:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "待定"
    backgroundColor:"powderblue",
  }
  {
    title:"小當家．友伴支援計劃 2013[可自由選擇出席]",
    start: new Date("2013/7/27 10:00")
    end: new Date("2013/7/27 12:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "待定"
    backgroundColor:"powderblue",
  }
  {
    title:"小當家．友伴支援計劃 2013[可自由選擇出席]",
    start: new Date("2013/8/3 10:00")
    end: new Date("2013/8/3 12:30")
    url: "http://pella.sytes.net/#/events/info/51e3527a7105331be410b4f7",
    location: "待定"
    backgroundColor:"powderblue",
  }
  ]
e.update({},{$set:{eventTemplate:evtTemp}})
console.log(new Date("2013/8/3 23:00"))

###TESTDB###



#@Actions
getUserList = (s,m)->
  m.find({},{name:1,profilePic:1,_id:1}).toArray(
    (error,result)->
      s.emit(
        "s2c",
        result
      )
  )
findUserById = (s,m,id)->
#  console.log(id)
  m.findOne(
    {_id:new ObjectID(id)},
    {},
    (err,result)->
      s.emit(
        "s2c",
        result
      )
    )

isOnline = []
getLogin = (s,m,msg)->
  s.join(msg.newID).leave(msg.originalID)
  isOnline[msg.newID.toString()] = true
  delete isOnline[msg.originalID]
  logOnline()

initLogin = (s,m,newID)->
  s.join(newID)
  isOnline[newID] = true
  logOnline()


addUser = (s,m,user)->
  console.log(user)
  d = new Date()
  user.registered = d.toString()
  user._id = ObjectID()
  m.insert(user)
  s.emit(
    "userAddSuccess"
      _id : user._id
      name: user.name
      profilePic: user.profilePic
      success:true
  )
deleteUser = (s,m,id)->
  m.findOne({_id:ObjectID(id)},{name:true,profilePic:true},
  (err,result)->
    m.remove({"_id":ObjectID(id)})
    console.log(result)
    s.emit(
      "deletedUser",
      result
    )
  )

getOnlineUser = (s,m,msg)->
  s.emit(
    "onlineUser",
    isOnline
  )

getEvent = (s,e,msg)->
  e.find({}).toArray(
    (err,result)->
      s.emit(
        "giveEvent",
        result
      )
  )

getEventByID = (s,e,msg)->
  e.findOne(
    {_id:ObjectID(msg.event_id)},
    {},
    (err,result)->
#      console.log(result)
      s.emit(
        "giveEventByID",
        result
      )
  )

#@Actions



#@Socket.io Stuff
io.set("log level",0)
io.on(
  "connection",
  (s)->
    #handle data trasmition
    s.on(
      "c2s",
      (data)->
        console.log(data)
        action = data.action
        switch(action)
          when "getUserList" then getUserList(s,m)
          when "findUserById" then findUserById(s,m,data.msg._id)
          when "getLogin" then getLogin(s,m,data.msg)
          when "initLogin" then initLogin(s,m,data.msg.newID)
          when "addUser" then addUser(s,m,data.msg.newUser)
          when "deleteUser" then deleteUser(s,m,data.msg._id)
          when "getOnlineUser" then getOnlineUser(s,m,data.msg)
          when "getEvent" then getEvent(s,e,data.msg)
          when "getEventByID" then getEventByID(s,e,data.msg)
    )
    #handle disconnection
    s.on(
      "disconnect",
      ()->
        console.log("someone disconnected")
    )
  #########checkHeartBeat#########
#    setInterval(
#      ()->
#        s.emit(
#          "checkHeartBeat"
#        )
#    ,10000
#    )#checking heartBeat of user returned by isOnline: _id
#
#    s.on(
#      "isOnline",
#      (data)->
#        console.log(data)
#    )
#########checkHeartBeat#########

)


console.log(new Date(2012,10,10,10,10,10))
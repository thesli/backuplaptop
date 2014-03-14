exports.setup = (app, mongoose) ->
  User = mongoose.model("User",
    name: String
    story: String
  )
  
  # The routes below define what is used by AngularJS's ngResource module for
  # automatic backend resource management.
  
  # query
  app.get "/users", (req, res) ->
    User.find {}, (err, docs) ->
      res.send docs


  
  # get
  app.get "/users/:id", (req, res) ->
    User.findOne
      _id: req.params.id
    , (err, data) ->
      res.send data


  
  # save (existing)
  app.post "/users/:id", (req, res) ->
    delete req.body._id

    User.update
      _id: req.params.id
    , req.body, (err, affected) ->
      res.send err


  
  # save (new)
  app.post "/users", (req, res) ->
    User.create req.body, (err, user) ->
      res.send user


  
  # remove
  app.del "/users/:id", (req, res) ->
    User.remove
      _id: req.params.id
    , (err) ->
      res.send err



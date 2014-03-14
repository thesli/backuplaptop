"use strict"

ct = {}

ct.addUserCtrl =
  ($scope)->
    s = $scope
    #    s.piclist = [[name:1,val:2],[name:2,val:3],[name:3,val:4]]
    s.preview = parseInt(Math.random() * 140 + 1)
    s.piclist = [1..140]
    s.gender = ["male", "female"]
    ####click functions####
    s.reset = ()->
      s.newUser = {}
      s.preview = parseInt(Math.random() * 140 + 1)
    s.done = ()->
      if(s.newUser.name != "")
        s.newUser.profilePic = s.preview + ".jpg"
      #        console.log(s.newUser)
      t.emit(
        "c2s",
        action: "addUser",
        msg:
          {newUser: s.newUser}
      )
      t.on(
        "userAddSuccess",
      (data)->
#        console.log(data.name)
        userAddHtml = sprintf('<a href="/#/user/%s"><img src="/#/app/img/icon/%s" style="width:30px;height:30px;float:left;padding:5px;" alt=""/></a><span><a href="/#/user/%s">%s</a><br>is now registered !</span>',
          data._id, data.profilePic, data._id, data.name)
#        console.log(userAddHtml)
        $.sticky(userAddHtml)
      )
####click funcitons####


ct.wallCtrl =
  ($scope)->
    s = $scope


ct.chatCtrl =
  ($scope)->
    s = $scope
#    s.abc = "text"
#    s.tt = "tt"
ct.selectUserCtrl =
  ($scope)->
    s = $scope
    s.reverse = false
    s.predicate = 'name'
    s.abc = "abc is here"
    t.user = {}
    t.emit(
      "c2s",
      action: "getUserList"
    )
    s.userList = {}
    t.on(
      "s2c",
    (data)->
      s.$apply(
        ()->
          s.user = data
#            console.log(s.user)
      )
    )


ct.homeCtrl =
  ($scope)->
    s = $scope

ct.eventCtrl =
  ($scope, $compile, $rootScope)->
    s = $scope
    r= $rootScope
    s.allevent = {}
    t.emit(
      "c2s",
      action: "getEvent",
      msg:
        {
          _id: $rootScope._id
        }
    )
    t.on(
      "giveEvent",
    (data)->
#      console.log(data)
      s.$apply(
        ()->
          s.allEvent = data
          for e in s.allEvent
            e.distanceFromUser = parseInt(r.calcDistance(r.currentUser.latitude, r.currentUser.longitude,e.location.latitude,e.location.longitude))

          )
      )

ct.eventInfoCtrl =
  ($scope, $routeParams, $rootScope)->
    s = $scope
    s.abc="cde"
    r = $rootScope
#    console.log(r.currentUser)
    s._id = $routeParams.id
#    console.log(s._id)
    t.emit(
      "c2s",
      action: "getEventByID",
      msg:
        {
          "event_id": s._id
          "user_id": r.currentUser._id
        }
    )
    t.on(
      "giveEventByID",
      (data)->
#        console.log(data)
        s.$apply(
          ->
            s.eventInfo = data
            s.addEventLink = 'http://pella.sytes.net/add/event/'+ s.eventInfo._id
            console.log(s.eventInfo)
        )
    )
    s.joinEvent = ()->
      t.emit(
        "c2s",
        action: "joinEvent",
        msg:{
          event_id: s.eventInfo._id
          user_id: r.currentUser._id
        }
      )
      t.on(

      )
    s.$on(
      "$destroy",
      ()->
        delete s.eventInfo
    )



ct.aboutCtrl =
  ($scope)->
    s = $scope


ct.userInfoCtrl =
  ($scope, $rootScope, $routeParams, $cookieStore)->
    s = $scope
    s.stuff = "stuffed"
    r = $rootScope
    t.emit(
      "c2s",
      action: "findUserById"
      msg:
        {
          _id: $routeParams.id
        }
    )
    t.on(
      "s2c",
    (data)->
#        console.log(data)  toggle to get the data sample
      s.userInfo = {}
      s.gpsAddress = ""
      s.$apply(
        ->
          s.userInfo = data
          if(r.currentUser)
            s.distanceBetween = parseInt(r.calcDistance(r.currentUser.latitude, r.currentUser.longitude,
              s.userInfo.latitude, s.userInfo.longitude))
          lat = parseFloat(data.latitude)
          lng = parseFloat(data.longitude)
          center = [lat, lng]
          #            console.log([lat,lng])
          $(".googlemap").gmap3({
            map:
              {
                options:
                  {
                    center: center
                    zoom: 1
                  }
              }
            marker:
              {
                latLng: center
              }
            getaddress:
              {
                latLng: center
                callback: (result)->
                  if(result)
#                      console.log(result)
                    s.$apply(
                      ()->
                        s.gpsAddress = result[0].formatted_address
                    )
              }
          })
      )
    )
    s.loginAsUser =
      ()->
        r.currentUser = s.userInfo
        $cookieStore.put("$rootScope.currentUser", JSON.stringify(s.userInfo))
        t.emit(
          "c2s",
          action: "getLogin",
          msg:
            {
              originalID: r.currentUser._id || "none",
              newID: s.userInfo._id
            }
        )

        ##Notify Logined##
        stickyhtml = sprintf('<a href="/#/user/%s"><img src="/app/img/icon/%s" style="width:30px;height:30px;float:left;padding:5px;" alt=""/></a><span>You now Login as <a href="/#/user/%s"><br>%s</a></span>',
          r.currentUser._id, r.currentUser.profilePic, r.currentUser._id, r.currentUser.name)
        $.sticky(stickyhtml)
    ##Notify Logined##
    s.deleteUser = ()->
      t.emit(
        "c2s",
        action: "deleteUser",
        msg:
          {
            _id: s.userInfo._id
          }
      )
      t.on(
        "deletedUser",
      (data)->
#          console.log(data)
        deleteUserHtml = sprintf('<img src="/app/img/icon/%s" style="width:30px;height:30px;float:left;padding:5px;" alt=""/><span>%s<br>is now Deleted</span>',
          data.profilePic, data.name)
        $.sticky(deleteUserHtml)
      )
      s.$on(
        "$destroy",
        ()->
          delete s.userInfo
      )

##develop Stuff##





# Controllers
angular.module("myApp.controllers", []).controller(ct)


#angular.module("myApp.controllers", []).controller("UserCtrl", ($scope, User) ->
#$scope.users = User.query()
#  $scope.addUser = ->
#  user = new User(name: $scope.newUser.name)
#  user.$save()
#  $scope.users.push user
#  $scope.newUser = ""
#
#  $scope.showStory = (user) ->
#  User.get
#userId: user._id
#    , (user) ->
#      $scope.showUser = user
#
#
#  $scope.hideStory = ->
#    $scope.showUser = null
#
#  $scope.removeUser = (user) ->
#    User.remove
#      userId: user._id
#    , ->
#      $scope.users = User.query()
#      $scope.showUser = null
#
#
#  $scope.updateUser = (user) ->
#    user.$save userId: user._id
#    $scope.showUser = null
#).controller("AboutCtrl", ($scope) ->
#).controller "NavCtrl", ($scope, $location) ->
#
#  # this toggles the 'active' class on/off in the navbar
#  $scope.isActive = (path) ->
#    current = $location.path()
#    (if path is current then "active" else "")
#


"use strict"

# Services 
service = angular.module("myApp.services", ["ngResource"]).factory("User", ($resource) ->
  $resource "/users/:userId",
    userId: "@id"
).factory(
  "generateMap",
  ()->
    alert("generateMap")
)

#jQuery could be written over here on the initization
service.run(
  ($rootScope, $cookieStore)->
    r =$rootScope
    if($cookieStore.get("$rootScope.currentUser"))
      $rootScope.currentUser = JSON.parse($cookieStore.get("$rootScope.currentUser"))
#      console.log($rootScope.currentUser._id)
      t.emit(
        "c2s",
        action:"initLogin",
        msg:{
          newID: $rootScope.currentUser._id
        }
      )
      t.on(
        "checkHeartBeat",
        ()->
          t.emit(
            "isOnline",
            isOnline : JSON.parse($cookieStore.get("$rootScope.currentUser"))._id
          )
      )

    r.deg2rad = (deg)->
      deg * Math.PI / 180
    r.calcDistance = (lat1, lon1, lat2, lon2)->
      R = 6371
      dLat = r.deg2rad(lat2 - lat1)
      dLon = r.deg2rad(lon2 - lon1)
      a = Math.pow(Math.sin(dLat / 2),
        2) + Math.cos(r.deg2rad(lat1)) * Math.cos(r.deg2rad(lat2)) * Math.pow(Math.sin(dLon / 2), 2)
      c = 2 * Math.atan(Math.sqrt(a), Math.sqrt(1 - a))
      d = R * c
      d

    $(".chatBar").css(right: "-=150")
    $(".chatBar").hover(
      ()->
        $(this).css(right: "+=150")
    ,
    ()->
      $(this).css(right: "-=150")
    )

)

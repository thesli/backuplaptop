"use strict"

# Declare app level module which depends on filters, and services
angular.module("myApp", ["myApp.filters", "myApp.services", "myApp.directives", "myApp.controllers",'ngCookies'],
  #######writing directives here############

#  ($compileProvider)->
#    $compileProvider.directive "compile", ($compile) ->
#      (scope, element, attrs) ->
#        scope.$watch (
#          (scope) ->
##            console.log(attrs.compile)
#            scope.$eval(attrs.compile)
#          ),
#        (value) ->
#          console.log(value)
#          element.html(value)
#          console.log(element.contents())
#          $compile(element.contents())(scope)

  #######writing directives here############

).config ["$routeProvider","$locationProvider", ($routeProvider,$locationProvider) ->
  $locationProvider.html5Mode(false)
  $routeProvider.when(
    "/user/add",
    templateUrl: "/app/partials/addUser.html"
    controller: "addUserCtrl"
  )
  $routeProvider.when "/users",
    templateUrl: "/app/partials/users.html"
    controller: "UserCtrl"
  $routeProvider.when(
    "/wall",
    templateUrl: "/app/partials/wall.html"
    controller: "wallCtrl"
  )
  $routeProvider.when(
    "/selectUser",
    templateUrl: "/app/partials/selectUser.html"
    controller: "userSelectCtrl"
  )
  $routeProvider.when(
    "/selectUser",
    templateUrl: "/app/partials/selectUser.html"
    controller: "selectUserCtrl"
  )
  $routeProvider.when(
    "/chat",
    templateUrl: "/app/partials/chatPage.html"
    controller: "chatPageCtrl"
  )
  $routeProvider.when(
    "/events/info/:id",
    templateUrl: "/app/partials/eventInfo.html"
    controller: "eventInfoCtrl"
  )
  $routeProvider.when(
    "/events",
    templateUrl: "/app/partials/event.html"
    controller: "eventCtrl"
  )
  $routeProvider.when "/about",
    templateUrl: "/app/partials/about.html"
    controller: "aboutCtrl"
  $routeProvider.when(
    "/events",
    templateUrl: "/app/partials/event.html"
    controller: "eventCtrl"
  )
  $routeProvider.when(
    "/",
    templateUrl: "/app/partials/selectUser.html"
    controller: "selectUserCtrl"
  )
  $routeProvider.when(
    "/user/:id",
    templateUrl: "/app/partials/userInfo.html"
    controller: "userInfoCtrl"
  )
  $routeProvider.otherwise redirectTo: "/"


]


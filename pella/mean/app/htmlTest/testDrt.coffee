myApp = angular.module("myApp",[])
MyCtrl = ($scope)->
  $scope.abc="cde"
  $scope.ran = {
    abc:"cde",
    cde:{
      some:"shit"
    }
  }
myApp.controller("MyCtrl",MyCtrl)

myApp.directive("myDirective",()->
  (scope,elem,attr)->
#    lol = scope.$parse(attr.value)
    console.log(attr.pcgame)
)


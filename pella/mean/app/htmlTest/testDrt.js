// Generated by CoffeeScript 1.6.3
(function() {
  var MyCtrl, myApp;

  myApp = angular.module("myApp", []);

  MyCtrl = function($scope) {
    $scope.abc = "cde";
    return $scope.ran = {
      abc: "cde",
      cde: {
        some: "shit"
      }
    };
  };

  myApp.controller("MyCtrl", MyCtrl);

  myApp.directive("myDirective", function() {
    return function(scope, elem, attr) {
      return console.log(attr.pcgame);
    };
  });

}).call(this);

/*
//@ sourceMappingURL=testDrt.map
*/
(function() {
  var app;

  app = angular.module("pella", []);

  app.controller("inputCtrl", function($scope) {
    var s;
    s = $scope;
    return s.abc = "what the fuck";
  });

}).call(this);

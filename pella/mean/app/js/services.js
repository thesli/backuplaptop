// Generated by CoffeeScript 1.6.3
(function() {
  "use strict";
  var service;

  service = angular.module("myApp.services", ["ngResource"]).factory("User", function($resource) {
    return $resource("/users/:userId", {
      userId: "@id"
    });
  }).factory("generateMap", function() {
    return alert("generateMap");
  });

  service.run(function($rootScope, $cookieStore) {
    var r;
    r = $rootScope;
    if ($cookieStore.get("$rootScope.currentUser")) {
      $rootScope.currentUser = JSON.parse($cookieStore.get("$rootScope.currentUser"));
      t.emit("c2s", {
        action: "initLogin",
        msg: {
          newID: $rootScope.currentUser._id
        }
      });
      t.on("checkHeartBeat", function() {
        return t.emit("isOnline", {
          isOnline: JSON.parse($cookieStore.get("$rootScope.currentUser"))._id
        });
      });
    }
    r.deg2rad = function(deg) {
      return deg * Math.PI / 180;
    };
    r.calcDistance = function(lat1, lon1, lat2, lon2) {
      var R, a, c, d, dLat, dLon;
      R = 6371;
      dLat = r.deg2rad(lat2 - lat1);
      dLon = r.deg2rad(lon2 - lon1);
      a = Math.pow(Math.sin(dLat / 2), 2) + Math.cos(r.deg2rad(lat1)) * Math.cos(r.deg2rad(lat2)) * Math.pow(Math.sin(dLon / 2), 2);
      c = 2 * Math.atan(Math.sqrt(a), Math.sqrt(1 - a));
      d = R * c;
      return d;
    };
    $(".chatBar").css({
      right: "-=150"
    });
    return $(".chatBar").hover(function() {
      return $(this).css({
        right: "+=150"
      });
    }, function() {
      return $(this).css({
        right: "-=150"
      });
    });
  });

}).call(this);

/*
//@ sourceMappingURL=services.map
*/

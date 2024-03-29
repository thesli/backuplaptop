// Generated by CoffeeScript 1.6.3
(function() {
  "use strict";
  var ct;

  ct = {};

  ct.addUserCtrl = function($scope) {
    var s, _i, _results;
    s = $scope;
    s.preview = parseInt(Math.random() * 140 + 1);
    s.piclist = (function() {
      _results = [];
      for (_i = 1; _i <= 140; _i++){ _results.push(_i); }
      return _results;
    }).apply(this);
    s.gender = ["male", "female"];
    s.reset = function() {
      s.newUser = {};
      return s.preview = parseInt(Math.random() * 140 + 1);
    };
    return s.done = function() {
      if (s.newUser.name !== "") {
        s.newUser.profilePic = s.preview + ".jpg";
      }
      t.emit("c2s", {
        action: "addUser",
        msg: {
          newUser: s.newUser
        }
      });
      return t.on("userAddSuccess", function(data) {
        var userAddHtml;
        userAddHtml = sprintf('<a href="/#/user/%s"><img src="/#/app/img/icon/%s" style="width:30px;height:30px;float:left;padding:5px;" alt=""/></a><span><a href="/#/user/%s">%s</a><br>is now registered !</span>', data._id, data.profilePic, data._id, data.name);
        return $.sticky(userAddHtml);
      });
    };
  };

  ct.wallCtrl = function($scope) {
    var s;
    return s = $scope;
  };

  ct.chatCtrl = function($scope) {
    var s;
    return s = $scope;
  };

  ct.selectUserCtrl = function($scope) {
    var s;
    s = $scope;
    s.reverse = false;
    s.predicate = 'name';
    s.abc = "abc is here";
    t.user = {};
    t.emit("c2s", {
      action: "getUserList"
    });
    s.userList = {};
    return t.on("s2c", function(data) {
      return s.$apply(function() {
        return s.user = data;
      });
    });
  };

  ct.homeCtrl = function($scope) {
    var s;
    return s = $scope;
  };

  ct.eventCtrl = function($scope, $compile, $rootScope) {
    var r, s;
    s = $scope;
    r = $rootScope;
    s.allevent = {};
    t.emit("c2s", {
      action: "getEvent",
      msg: {
        _id: $rootScope._id
      }
    });
    return t.on("giveEvent", function(data) {
      return s.$apply(function() {
        var e, _i, _len, _ref, _results;
        s.allEvent = data;
        _ref = s.allEvent;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          e = _ref[_i];
          _results.push(e.distanceFromUser = parseInt(r.calcDistance(r.currentUser.latitude, r.currentUser.longitude, e.location.latitude, e.location.longitude)));
        }
        return _results;
      });
    });
  };

  ct.eventInfoCtrl = function($scope, $routeParams, $rootScope) {
    var r, s;
    s = $scope;
    s.abc = "cde";
    r = $rootScope;
    s._id = $routeParams.id;
    t.emit("c2s", {
      action: "getEventByID",
      msg: {
        "event_id": s._id,
        "user_id": r.currentUser._id
      }
    });
    t.on("giveEventByID", function(data) {
      return s.$apply(function() {
        s.eventInfo = data;
        s.addEventLink = 'http://pella.sytes.net/add/event/' + s.eventInfo._id;
        return console.log(s.eventInfo);
      });
    });
    s.joinEvent = function() {
      t.emit("c2s", {
        action: "joinEvent",
        msg: {
          event_id: s.eventInfo._id,
          user_id: r.currentUser._id
        }
      });
      return t.on();
    };
    return s.$on("$destroy", function() {
      return delete s.eventInfo;
    });
  };

  ct.aboutCtrl = function($scope) {
    var s;
    return s = $scope;
  };

  ct.userInfoCtrl = function($scope, $rootScope, $routeParams, $cookieStore) {
    var r, s;
    s = $scope;
    s.stuff = "stuffed";
    r = $rootScope;
    t.emit("c2s", {
      action: "findUserById",
      msg: {
        _id: $routeParams.id
      }
    });
    t.on("s2c", function(data) {
      s.userInfo = {};
      s.gpsAddress = "";
      return s.$apply(function() {
        var center, lat, lng;
        s.userInfo = data;
        if (r.currentUser) {
          s.distanceBetween = parseInt(r.calcDistance(r.currentUser.latitude, r.currentUser.longitude, s.userInfo.latitude, s.userInfo.longitude));
        }
        lat = parseFloat(data.latitude);
        lng = parseFloat(data.longitude);
        center = [lat, lng];
        return $(".googlemap").gmap3({
          map: {
            options: {
              center: center,
              zoom: 1
            }
          },
          marker: {
            latLng: center
          },
          getaddress: {
            latLng: center,
            callback: function(result) {
              if (result) {
                return s.$apply(function() {
                  return s.gpsAddress = result[0].formatted_address;
                });
              }
            }
          }
        });
      });
    });
    s.loginAsUser = function() {
      var stickyhtml;
      r.currentUser = s.userInfo;
      $cookieStore.put("$rootScope.currentUser", JSON.stringify(s.userInfo));
      t.emit("c2s", {
        action: "getLogin",
        msg: {
          originalID: r.currentUser._id || "none",
          newID: s.userInfo._id
        }
      });
      stickyhtml = sprintf('<a href="/#/user/%s"><img src="/app/img/icon/%s" style="width:30px;height:30px;float:left;padding:5px;" alt=""/></a><span>You now Login as <a href="/#/user/%s"><br>%s</a></span>', r.currentUser._id, r.currentUser.profilePic, r.currentUser._id, r.currentUser.name);
      return $.sticky(stickyhtml);
    };
    return s.deleteUser = function() {
      t.emit("c2s", {
        action: "deleteUser",
        msg: {
          _id: s.userInfo._id
        }
      });
      t.on("deletedUser", function(data) {
        var deleteUserHtml;
        deleteUserHtml = sprintf('<img src="/app/img/icon/%s" style="width:30px;height:30px;float:left;padding:5px;" alt=""/><span>%s<br>is now Deleted</span>', data.profilePic, data.name);
        return $.sticky(deleteUserHtml);
      });
      return s.$on("$destroy", function() {
        return delete s.userInfo;
      });
    };
  };

  angular.module("myApp.controllers", []).controller(ct);

}).call(this);

/*
//@ sourceMappingURL=controllers.map
*/

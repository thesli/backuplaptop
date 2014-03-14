(function() {
  var app, chatTimeout, ct, responseChatBar, showChatBar;

  responseChatBar = function() {
    var winW;
    winW = $(window).width();
    if (winW > 960) {
      $(".chatRightBar").css({
        width: "250px"
      });
      return $(".mainContent").css({
        width: parseInt(winW) - 260
      });
    } else {
      $(".chatRightBar").css({
        width: "30px"
      });
      return $(".mainContent").css({
        width: parseInt(winW) - 50
      });
    }
  };

  $(document).ready(function() {
    responseChatBar();
    return $(window).resize(function() {
      return responseChatBar();
    });
  });

  chatTimeout = {};

  $(".chatRightBar").hover(function() {
    return chatTimeout = setTimeout(showChatBar, 1000);
  }, function() {
    if ($(window).width() < 960) {
      clearTimeout(chatTimeout);
      return $(".chatRightBar").animate({
        width: "30px"
      });
    }
  });

  showChatBar = function() {
    if ($(window).width() < 960) {
      return $(".chatRightBar").animate({
        width: "250px"
      });
    }
  };

  app = angular.module("chat", []);

  ct = {};

  ct.chatCtrl = function($scope) {
    var s, _i, _results;
    s = $scope;
    s.abc = "cde";
    s.arr = (function() {
      _results = [];
      for (_i = 1; _i <= 140; _i++){ _results.push(_i); }
      return _results;
    }).apply(this);
    s.users = [
      {
        name: "Kris Hung",
        p: "1.jpg"
      }, {
        name: "Sharon shek",
        p: "3.jpg"
      }, {
        name: "REALREALREALLONGNAME",
        p: "5.jpg"
      }, {
        name: "Cindy Lam",
        p: "7.jpg"
      }, {
        name: "Macy Ngok",
        p: "9.jpg"
      }
    ];
    return s.clickToShowChat;
  };

  app.controller(ct);

}).call(this);

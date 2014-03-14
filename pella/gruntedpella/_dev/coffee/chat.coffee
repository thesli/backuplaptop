responseChatBar =
  ->
    winW = $(window).width()
    if winW>960
      $(".chatRightBar").css(
        width:"250px"
      )
      $(".mainContent").css(
        width: parseInt(winW)-260
      )
    else
      $(".chatRightBar").css(
        width:"30px"
      )
      $(".mainContent").css(
        width: parseInt(winW)-50
      )

$(document).ready(
  ->
    responseChatBar()
    $(window).resize(
      ->
        responseChatBar()
    )
)


chatTimeout = {}
$(".chatRightBar").hover(
  ->
    chatTimeout = setTimeout(showChatBar,1000)
  ,
  ->
    if($(window).width() < 960)
      clearTimeout(chatTimeout)
      $(".chatRightBar").animate(
        width: "30px"
      )
)

showChatBar =
  ->
    if($(window).width()<960)
      $(".chatRightBar").animate(
        width:"250px"
      )

app = angular.module("chat",[])
ct = {}
ct.chatCtrl =
  ($scope)->
    s = $scope
    s.abc = "cde"
    s.arr = [1..140]
    s.users=
    [{
      name: "Kris Hung"
      p:"1.jpg"
    }
    {
      name: "Sharon shek"
      p:"3.jpg"
    }
    {
      name:"REALREALREALLONGNAME"
      p:"5.jpg"
    }
    {
      name:"Cindy Lam"
      p:"7.jpg"
    }
    {
      name:"Macy Ngok"
      p:"9.jpg"
    }]
    s.clickToShowChat
app.controller(ct)











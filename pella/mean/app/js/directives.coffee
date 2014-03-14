"use strict"

# Directives

dt={}

dt.slideup = ()->
  linkFunction = (scope,elem,attrs)->
    elem.on(
      "click",
      ()->
        $(this).slideUp()
    )
  drtObj =
    restrict: "A",
    scope:{
#      test:"bind"
    },
    transclue: false,
    replace: true,
    link: linkFunction
  drtObj

dt.qr = ()->
  drtObj =
    link : (scope,element,attr)->
      console.log(attr.text)
      etext = scope.$eval(attr.text)
      if(etext)
        $(".qr").qrcode(
          width:220
          height:220
          text:etext
        )
      else
        $(".qr").qrcode(
          width:220
          height:220
          text:attr.text
        )
        console.log($("canvas"))
#      $("#p").css("left","130px")
#      $("#p").css("top","400px")
    template: "<div style='position: relative' class='qr'><span id='p' style='z-index: 99999;color:pink;left:100px;top:100px;position: absolute;font-size:50px;background-color: palevioletred'>P</span></div>"
    restrict:"E"

dt.gmap = ()->
  link : (scope,element,attr)->
    lat=scope.$eval(attr.lat)
    mlat=scope.$eval(attr.mlat)
    lng=scope.$eval(attr.lng)
    mlng=scope.$eval(attr.mlng)
    w = scope.$eval(attr.w) || 220
    h = scope.$eval(attr.h) || 220
#    console.log(lat)
    $(".gmap").gmap3(
      map:
        options:
          center:[lat,lng]
          zoom:1
          mapTypeId:google.maps.MapTypeId.STAELLITE
      marker:
        values:
          [{latLng: [lat,lng]},{latLng:[mlat,mlng]}]
#        latLng:[10,20]
    )
    $(".gmap").css("height",h)
    $(".gmap").css("width",w)
#    console.log($("#gmap").innerHTML)
  template:"<div class='gmap'></div>"
  restrict:"E"

dt.fullcal = ()->
  link: (scope,elem,attrs)->
    nullevt = events:[
        {
          title:"You have no event Right now pal!",
          start: new Date(2013,6,17,6,30,0)
          end: new Date(2013,6,17,12,0,0)

#          color:"yellow",
#          backgroundColor:"red",
#          borderColor:"white"
        }
      ]
    evt = scope.$eval(attrs.event) || nullevt
#    console.log(evt)
    $(document).ready(
      ()->
        $("#fullCal").fullCalendar(
          header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
          },
          defaultView:"agendaWeek",
          events:evt,allDayDefault:false
        )
    )
  template: "<div id='fullCal'></div>"
  restrict:"E"

angular.module("myApp.directives", []).directive(dt)

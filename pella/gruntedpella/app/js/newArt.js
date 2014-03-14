(function() {
  $(document).ready(function() {
    var l;
    l = $(".o").css("height");
    return $(".q").click(function() {
      var f, o;
      o = $(this).parent(".o");
      f = o.css("height") === l;
      if (f) {
        return o.animate({
          height: parseInt($(this).css("height")) + 2 * parseInt($(this).css("padding"))
        }, 500);
      } else {
        return o.animate({
          height: l
        }, 500);
      }
    });
  });

}).call(this);

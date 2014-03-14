$(document).ready(
  ->
    l = $(".o").css("height")
    $(".q").click(
      ->
        o = $(this).parent(".o")
        f = o.css("height") == l
        if(f)
          o.animate(
            height:parseInt($(this).css("height"))+2*parseInt($(this).css("padding"))
            500
          )
        else
          o.animate(
            height:l
            500
          )
    )
)
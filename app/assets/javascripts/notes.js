$(function () {


  //セカンドヘッダースライドイン

  $(".nav-link")
    .mouseover(function () {
      if ($(this).attr("data-fader") != $(".activative").attr("data-fader")) {
        $(".fader").slideUp("fast");
        $(".activative").removeClass("activative")
      }
    })
  $(".navbar")
    .mouseover(function () {
      $(".fader").slideUp("fast");
      $(".activative").removeClass("activative")
    })
  $(".grandPart")
    .mouseover(function () {
      $(".fader").slideUp("fast");
      $(".activative").removeClass("activative")
    });





  $("#pick_up")
    .mouseover(function () {
      $("#pick_up_fader").slideDown("fast");
      $("#pick_up_fader").addClass("activative");
    });


  $("#shop")
    .mouseover(function () {
      $("#shop_fader").slideDown("fast");
      $("#shop_fader").addClass("activative");
    })


  if (location.href == "http://localhost:3000/") {
    //フッダーの犬をクリックすると上にスライド

    $('.fa-dog').on('click', function () {
      $("html,body").animate({
        scrollTop: 0,

      }, 600);
    });



    //pickeddogホバー処理

    $(".picked_dog")
      .mouseover(function () {
        $(this).find(".card-img-overlay").removeClass("hide");
      })
      .mouseout(function () {
        $(this).find(".card-img-overlay").addClass("hide");
      });
  }
});
$(document).on('turbolinks:load', function () {
  $('.fa-dog').on('click', function () {
    $("html,body").animate({
      scrollTop: 0,

    }, 600);
  });
  $(".picked_dog")
    .mouseover(function () {
      $(this).find(".card-img-overlay").removeClass("hide");
    })
    .mouseout(function () {
      $(this).find(".card-img-overlay").addClass("hide");
    });


  $("#pick_up")
    .mouseover(function () {
      $("#pick_up_fader").slideDown();
    })
    .mouseout(function () {
      $("#pick_up_fader").slideUp("fast");
    });

  $("#shop")
    .mouseover(function () {
      $("#shop_fader").slideDown();
    })
    .mouseout(function () {
      $("#shop_fader").slideUp("fast");
    });

});
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



});
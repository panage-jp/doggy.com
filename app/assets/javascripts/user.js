$(document).on('turbolinks:load', function () {
  $('#open_passform').click(function (e) {
    e.preventDefault()
    $(this).addClass("hide")
    $("#closed_passform").removeClass("hide")
  })
  $("#file_image").click(function () {
    $("#file_image_input").trigger('click');
  });

  $("#dog_image").click(function () {
    $("#dog_image_input").trigger('click');
  });
});
$(document).on('turbolinks:load', function () {
  $('#open_passform').click(function (e) {
    e.preventDefault()
    $(this).addClass("hide")
    $("#closed_passform").removeClass("hide")
  })
  $("#file_image").click(function () {
    $("input[type='file']").trigger('click');
  });
});
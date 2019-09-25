$(document).on('turbolinks:load', function () {
  //コメントの詳細表示
  $(".tuzuki").click(function (e) {
    e.preventDefault();
    let id = $(this).data("id");
    $(`.posts__puttogether[data-id=${id}] .hide`).removeClass("hide");
    $(`.posts__puttogether[data-id=${id}] .post__maincontent-posts:first`).addClass("hide");

  })

  $(".oritatamu").click(function (e) {
    e.preventDefault();
    let id = $(this).data("id");
    $(`.posts__puttogether[data-id=${id}] .hide`).removeClass("hide");
    $(`.posts__puttogether[data-id=${id}] .post__maincontent-posts:last`).addClass("hide");

  })
})
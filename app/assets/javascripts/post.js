$(function () {
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

  //画像の投稿処理
  $("#image_post").click(function (e) {
    e.preventDefault()
    $("#image_post_input").trigger('click');
  });

  $("#image_post_media").click(function (e) {
    e.preventDefault()
    $("#image_post_input_media").trigger('click');
  });
})
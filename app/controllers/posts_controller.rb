class PostsController < ApplicationController
  def index
    @posts = Post.includes(:users).with_attached_images
  end
end

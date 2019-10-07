class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @posts = @user.posts.includes(:likes).with_attached_images
    @dogs = @user.dogs.with_attached_avatar
    @dog = Dog.new
    @like_length = 0
    @posts.each do |post|
      @like_length += post.likes.length
    end
    
  end

  def index
    @users = User.with_attached_avatar
  end
end

class LikesController < ApplicationController
  before_action :user_signed
  before_action :authenticate_user, only: :destroy
  def create
    like = Like.new(user_id: current_user.id, post_id: params[:post_id])
    like.save
    if like.save
      redirect_to posts_path
    else
      redirect_to root_path
    end
  end

  def destroy
    post = Like.find_by(user_id: params[:id], post_id: params[:post_id])
    post.destroy
    redirect_to posts_path
  end

  private
  def user_signed
    unless current_user
      redirect_to root_path
    end
  end
  def authenticate_user
    unless current_user.id == params[:id].to_i
      redirect_to root_path
    end
  end
end

class CommentsController < ApplicationController
  def create
    unless user_signed_in?
      redirect_to root_path
    end
    comment = Comment.new(comment_params)
    comment.save
    if comment.save
      redirect_to posts_path
    else
      root_path
    end
    
  end

  def destroy
    comment = Comment.find(params[:id])
    unless current_user && comment.user.id == current_user.id
      redirect_to root_path
    else 
      comment.destroy
      redirect_to posts_path
    end
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:text,:post_id).merge(user_id: current_user.id)

  end
end

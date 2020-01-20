class CommentsController < ApplicationController
  def new
    @post_id = params[:format].to_i
  end

  def create
    Comment.create(content: params[:comment],
                   user_id: current_user.id,
                   post_id: params[:post_id])
    redirect_to root_path
  end
end

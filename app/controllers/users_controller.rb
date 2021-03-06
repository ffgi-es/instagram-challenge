class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @posts = Post.where(user_id: @user.id)
    @comments = Comment.joins(:user)
  end
end

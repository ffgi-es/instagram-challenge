class HomeController < ApplicationController
  def index
    @posts = Post.joins(:user)
    @comments = Comment.joins(:user)
  end
end

class HomeController < ApplicationController
  def index
    @posts = Post.joins(:user)
  end
end

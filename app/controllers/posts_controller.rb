class PostsController < ApplicationController
  def new
  end

  def create
    post_params = {
      user_id: current_user.id,
      caption: params[:caption]
    }
    post = Post.create post_params
    post.image.attach(params[:image])

    redirect_to root_path
  end
end

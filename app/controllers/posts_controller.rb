class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def index 
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save 
      flash[:success] = "Post saved!"
      redirect_to user_path(id: @post.user_id)
    else 
      render "new"
    end
  end


  def post_params 
    params.require(:post).permit(:title, :body)
  end
  
  # Before filters
  def logged_in_user
    unless logged_in? 
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end

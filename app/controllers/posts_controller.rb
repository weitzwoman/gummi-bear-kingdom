class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    render :index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "New Post Successfully Added!"
      redirect_to posts_path
    else
      render :new
    end
  end

private
  def post_params
    params.require(:post).permit(:title, :author, :content)
  end
end

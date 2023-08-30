class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end


  def show
    @post = Post.find(params[:id])
  end

  def create
    @posts = Post.new(post_params)
    if @posts.save
      redirect_to '/'
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private
  def post_params
    params.require(:post).permit(:hobby, :required_time, :budget, :number_of_people)
  end
end
class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :rankings]

  def index
    @posts = Post.all
    @users = User.all
  end

  def create
    @post = current_user.posts.build(post_params) # ユーザーとの関連付けを行う
  
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
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
    redirect_to post_path
  end


  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def rankings
    @rankings = Post.joins(:likes).group(:id).order('COUNT(likes.id) DESC')
  end

  
  private
  def post_params
    params.require(:post).permit(:hobby, :required_time, :budget, :number_of_people)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
class UsersController < ApplicationController

  def index
    @users = User.all
    @posts = Post.all 
  end

  def edit
  end

  def show
    @nickname = current_user.nickname
    @posts = current_user.posts
  end

  def user_params
    params.require(:user).permit(:nickname, :email,)
  end

end
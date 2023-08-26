class UsersController < ApplicationController

  def index
    @users = User.all
    @posts = Post.all 
  end

  def edit
  end

  def user_params
    params.require(:user).permit(:nickname, :email,)
  end

end
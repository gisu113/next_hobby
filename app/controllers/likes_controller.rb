class LikesController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!

  def create
    like = current_user.likes.build(post_id: params[:post_id])
    if like.save
      respond_to do |format|
        format.js
      end
    else
      # いいねが正常に保存されなかった場合のエラーハンドリングを行う
      # 例: エラーメッセージを設定し、適切なリダイレクトを行う
      flash[:alert] = 'いいねの作成に失敗しました。'
      redirect_to root_path
    end
  end

  def destroy
    like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    like.destroy
    respond_to do |format|
      format.js
    end
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
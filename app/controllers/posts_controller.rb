class PostsController < ApplicationController
  # POST /posts
  # 火災レポート新規登録
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    def set_post
      @post = Post.find(post_params[:id])
    end

    # 許可するパラメータ
    def post_params
      params.require(:post).permit(:id, :title, :report_status, :ambulance_status, :fire_fighting_status, :address, :lat, :lng, :post_user_id)
    end
end

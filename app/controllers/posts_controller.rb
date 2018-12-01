class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  # GET /posts/:id
  # 火災レポート取得
  def show
    render json: @post
  end

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
      @post = Post.find(params[:id])
    end

    # 許可するパラメータ
    def post_params
      params.fetch(:post, {}).permit(:id, :title, :report_status, :ambulance_status, :fire_fighting_status, :address, :lat, :lng, :post_user_id)
    end
end
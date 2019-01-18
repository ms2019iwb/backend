class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update]

  # GET /posts
  # 火災レポート指定件数取得
  def index
    @posts = Post.where(id: params[:start_id]..params[:end_id]).reverse_order

    render json: @posts
  end

  # GET /lastpost
  def last
    @post = Post.last

    render json: @post
  end

  # GET /postscount
  # 火災レポート総数取得
  def count
    @number = Post.count

    render json: @number
  end

  # GET /burncount
  # 炎上中総数取得
  def burnCount
    @number = Post.where(fire_fighting_status: "1").count

    render json: @number
  end

  # GET /excount
  # 消火済み総数取得
  def exCount
    @number = Post.where(fire_fighting_status: "2").count

    render json: @number
  end

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
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/:id
  # 火災レポート更新
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    # 許可するパラメータ
    def post_params
      params.fetch(:post, {}).permit(:id, :title, :report_status, :ambulance_status, :fire_fighting_status, :address, :lat, :lng, :post_user_id, :start_id, :end_id)
    end
end

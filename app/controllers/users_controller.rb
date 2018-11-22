class UsersController < ApplicationController
  before_action :set_user, only: [:login]

  # POST /users
  # ユーザー新規登録
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # POST /login
  # ユーザーログイン
  def login
    if @user.authenticate(user_params[:password])
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unauthorized
    end
  end

  private
    def set_user
      @user = User.find_by!(email_address: user_params[:email_address])
    rescue
      render json: @user.errors, status: :unauthorized
    end

    # 許可するパラメータ
    def user_params
      params.require(:user).permit(:email_address, :screen_name, :password, :password_confirmation)
    end
end

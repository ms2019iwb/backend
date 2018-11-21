class UsersController < ApplicationController
  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def show
  end

  private
    def user_params
      params.require(:user).permit(:email_address, :screen_name, :password, :password_confirmation)
    end
end

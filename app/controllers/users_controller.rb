class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(@user)
      redirect_to root_url
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_session_url
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy!
  end

  private
  def user_params
    params.require(:user).permit(:password, :username)
  end

end

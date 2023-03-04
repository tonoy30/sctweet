class AuthController < ApplicationController
  def signup
    @user = User.new
  end

  def createuser
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "User created successfully"
    else
      render :signup, status: 400
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path, notice: "User logout successfully"
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end

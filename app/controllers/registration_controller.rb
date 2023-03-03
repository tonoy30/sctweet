class RegistrationController < ApplicationController
  def signup
    @user = User.new
  end
  def createuser
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "User created successfully"
    else
      render :signup
    end
  end
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end

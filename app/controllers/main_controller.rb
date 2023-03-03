class MainController < ApplicationController
  def index
    flash.now[:message] = "Login Successfull!"
    flash.now[:alert] = "Username/email or password invalid"
  end
end

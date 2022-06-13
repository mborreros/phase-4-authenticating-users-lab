class UsersController < ApplicationController

  def show
    previous_user = User.find_by(id: session[:user_id])
    if previous_user
      render json: previous_user
    else
      render json: {error: "User not found"}, status: :unauthorized
    end
  end

end

class UsersController < ApplicationController
  def index
  end

  def profile
    @user = User.find(params[:id])
    @jobs = Job.where(user_id: params[:id])
  end

end

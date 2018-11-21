class UsersController < ApplicationController
  def index
  end

  def profile
    @user = User.find(params[:id])
    @jobs = Job.where(user_id: params[:id])
  end

  def admin

  	@user = User.find(params[:user_id])
  	stuff = params[:user]
  	p stuff
  
  	p "dasjashdsahjskdhajsdhadhljs"
  	p params
  	 if @user.update(admin?: params[:admin?])
  		redirect_to "/"
  	 else
  	 	render "/users/profile/#{@user.id}"
  	 end

  	
  end
  private
  def user_params
  	params.require(:user).permit(:admin?)
  end
  def user_params2
  end
end

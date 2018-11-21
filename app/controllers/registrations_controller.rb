class RegistrationsController < Devise::RegistrationsController
  
  def after_update_path_for(user)
    user_profile_path(current_user)
  end

  def sign_up_params
  	params.require(:user).permit( :email, :password, :password_confirmation)
  end

  def account_update_params
  	params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :admin? )
  end

  def update_user_admin_perm
  	params.require(:user).permit(:admin?)
  end 

end

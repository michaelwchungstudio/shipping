class RegistrationsController < Devise::RegistrationsController
  
  def after_update_path_for(user)
    user_profile_path(current_user)
  end

end

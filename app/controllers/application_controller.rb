class ApplicationController < ActionController::Base
  before_action :user_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
    case resource.role
    when 'admin'
      admins_root_path
    when 'client'
      clients_root_path
    else
      root_path
    end
  end

  def after_sign_in_path_for(resource)
    case resource.role
    when 'admin'
      admins_root_path
    when 'client'
      clients_root_path
    else
      root_path
    end
  end

  def user_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name age addres role])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name age addres role])
 end
end

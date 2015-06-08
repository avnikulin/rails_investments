module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| 
                u.permit(:email, :password, :password_confirmation, :name) 
             }
    #devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    #devise_parameter_sanitizer.for(:sign_up) << :name { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation) }
    #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name) }
    #devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :name) }
  end

end

DeviseController.send :include, DevisePermittedParameters

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # after_action :verify_authorized

  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  def authorize_admin
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
   added_attrs = [:first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :avatar]
   devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
   devise_parameter_sanitizer.permit :account_update, keys: added_attrs
 end
end

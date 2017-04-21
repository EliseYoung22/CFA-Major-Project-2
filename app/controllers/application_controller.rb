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

end

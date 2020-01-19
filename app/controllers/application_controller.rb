class ApplicationController < ActionController::Base
  before_action :configure_paramters, if: :devise_controller?

  protected

  def configure_paramters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end

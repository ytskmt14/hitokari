class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # deviseのメソッドをオーバーライド
  # https://www.rubydoc.info/github/plataformatec/devise/Devise/Controllers/Helpers:after_sign_in_path_for
  def after_sign_in_path_for(resource)
      user_path(current_user.id)
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name])
  end
end

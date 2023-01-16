class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  # ログインを必須に
  def require_login
    return if user_signed_in?

    flash[:alert] = 'ログインしてください。'
    redirect_to new_user_session_path
  end

  protected

  # usernameとpasswordでのログインも可能
  def configure_permitted_parameters
    added_attrs = %i[email username password password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end

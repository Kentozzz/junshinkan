class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :admin])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :admin])
  end

  # Deviseで提供されるヘルパーメソッドをオーバーライド
  def after_sign_in_path_for(resource)
    # サインイン後に遷移したい特定のパスを指定
    users_path # 例: user_dashboard_pathやroot_path等
  end
end

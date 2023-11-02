class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top, :about]
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_with_keycloak
  
  def after_sign_in_path_for(resource)
    
    flash[:notice] ="Welcome! You have signed up successfully."
    user_path(current_user.id)
  end
  
  def after_sign_out_path_for(resource)
    flash[:notice] ="You have signed out successfully."
    root_path
  end
  
  private

  def authenticate_with_keycloak
    # KeycloakからのSAMLレスポンスを検証するコードを追加
    unless user_authenticated_with_keycloak?
      redirect_to 'http://localhost:8082/auth/realms/lab/account/'
    end
  end

  def user_authenticated_with_keycloak?
    # KeycloakからのSAMLレスポンスを検証してユーザーが認証されているか確認
    # ユーザーが認証されていればtrueを返す
  end

  def keycloak_login_url
    # KeycloakのログインページのURLを返す
    # Keycloakの設定によって異なります
  end
  

  protected

  def configure_permitted_parameters
    added_attrs = [:name, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
  end
end

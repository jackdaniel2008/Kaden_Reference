class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def after_sign_out_path_for(resource_or_scope)
      if resource_or_scope == :user
          root_path
      elsif resource_or_scope == :admin
          new_admin_session_path
      else
          root_path
      end
  end

  protected

  def configure_permitted_parameters
    # ユーザー登録時と編集時にそれぞれ必要な項目の指定
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :user_name, :age, :gender, :family])
    devise_parameter_sanitizer.permit(:account_update, keys: [:last_name, :first_name, :user_name, :age, :gender, :family])
  end
end
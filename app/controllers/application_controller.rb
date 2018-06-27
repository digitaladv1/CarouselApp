class ApplicationController < ActionController::Base
<<<<<<< HEAD
  ## protect_from_forgery with: :exception
=======
  protect_from_forgery with: :exception
>>>>>>> 9c74fabcbee421c8ed2d865af48224fbce6634f4

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys=>[:name])
        devise_parameter_sanitizer.permit(:account_update, :keys=>[:name])

  end


end

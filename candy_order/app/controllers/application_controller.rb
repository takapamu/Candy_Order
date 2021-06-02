class ApplicationController < ActionController::Base
     before_action :configure_permitted_parameters, if: :devise_controller?
     add_flash_types :success, :info, :warning, :danger　#フラッシュメッセージの色

       
    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_out, keys: [:email])
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :postal_code, :address, :telephone_number, :id_deleted])
    end
end

class ApplicationController < ActionController::Base
     before_action :configure_permitted_parameters, if: :devise_controller?
     add_flash_types :success, :info, :warning, :danger#フラッシュメッセージの色

    protected

    def after_sign_in_path_for(resource)
      case resource
      when Admin
        admin_products_path
      when Shop
        shop_path(resource)
      end
    end

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

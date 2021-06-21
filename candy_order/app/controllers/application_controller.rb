class ApplicationController < ActionController::Base
     protect_from_forgery with: :exception
     before_action :configure_permitted_parameters, if: :devise_controller?
     add_flash_types :success, :info, :warning, :danger#フラッシュメッセージの色
     helper_method :current_cart
     before_action :set_search

     def set_search
     @q = Product.ransack(params[:q]) #ransrakの検索メソッド
      @search = Product.ransack(params[:q])
      @products = @q.result(distinct: true).page(params[:page]).per(10)
     end

     def current_cart
       if current_shop
        # ユーザーとカートの紐付け
         current_cart = current_shop.cart || current_shop.create_cart!
       else
        current_cart = Cart.find_by(id: session[:cart_id]) || Cart.create
        session[:cart_id] = current_cart.id
       end
       current_cart
     end

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

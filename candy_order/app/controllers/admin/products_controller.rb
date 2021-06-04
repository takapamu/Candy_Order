class Admin::ProductsController < ApplicationController
    
    def new
      @product = Product.new
    end
    
    def index 
      @products = Product.all.page(params[:page]).per(10)
    end
    
    def show 
      @product = Product.find(params[:id])
    end
    
    def edit
      @product = Product.find(params[:id])
    end
    
    def create
      @product = Product.new
      @product.save(product_params)
    end
    
    private
    
    def product_params
        params.require(:product).permit(:product_image,:product_name,:product_company,:product_introduction,:product_price)
    end
end

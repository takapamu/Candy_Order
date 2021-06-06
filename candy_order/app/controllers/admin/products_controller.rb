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
      @product = Product.new(product_params)
      @product.save!
      redirect_to admin_products_path
    end

    def update
      @product = Product.find(params[:id])
      @product.update(product_params)
      redirect_to admin_product_path(@product)
    end

    private

    def product_params
        params.require(:product).permit(:image,:product_name,:product_company,:product_introduction,:product_price)
    end
end

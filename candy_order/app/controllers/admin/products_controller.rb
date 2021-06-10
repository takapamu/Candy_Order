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
      if @product.save!
        @product.create_notification
        redirect_to admin_products_path, success: "作成しました"
      else
        flash.now[:danger] = '作成に失敗しました。'
        render 'new'
      end
    end

    def update
      @product = Product.find(params[:id])
      if @product.update(product_params)
         redirect_to admin_product_path(@product), success: "更新しました"
      else
        flash.now[:danger] = '更新に失敗しました。'
        render 'edit'
      end
    end

    private

    def product_params
        params.require(:product).permit(:image,:product_name,:product_company,:product_introduction,:product_price,:genre_id)
    end
end

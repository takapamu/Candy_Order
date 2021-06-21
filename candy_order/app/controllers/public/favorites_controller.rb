class  Public::FavoritesController < ApplicationController

    def create
      @product = Product.find(params[:product_id])
      @favorite = current_shop.favorites.create(product_id: params[:product_id])
    end
    
    def destroy
      @product = Product.find(params[:product_id])
      @favorite = current_shop.favorites.find_by( product_id:  @product.id)
      @favorite.destroy
    end
    
end

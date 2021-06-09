class  Public::FavoritesController < ApplicationController

    def create
      @favorite = current_shop.favorites.create(product_id: params[:product_id])
      redirect_back(fallback_location: root_path)
    end
    
    def destroy
      @product = Product.find(params[:product_id])
      @favorite = current_shop.favorites.find_by( product_id:  @product.id)
      @favorite.destroy
      redirect_back(fallback_location: root_path)
    end
    
end

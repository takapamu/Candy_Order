class HomesController < ApplicationController

  def top
    @products = Product.all.page(params[:page]).per(6)
  end

end

class HomesController < ApplicationController

  def top
    @products = Product.all.page(params[:page]).per(5)
  end

end

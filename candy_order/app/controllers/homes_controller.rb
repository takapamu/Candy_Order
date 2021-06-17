class HomesController < ApplicationController

  def top
    @products = Product.all.page(params[:page]).per(8)
    array = Product.all
    @random = array.shuffle[0..3]
    @events = Event.all 
  end

end

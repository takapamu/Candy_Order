class Public::ProductsController < ApplicationController

  def index
    @q = Product.ransack(params[:q]) #ransrakの検索メソッド
    @products = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def show
    @product = Product.find(params[:id])
  end
  
  private
  
  def search_params
    params.require(:q).permit(:sort)
  end

end

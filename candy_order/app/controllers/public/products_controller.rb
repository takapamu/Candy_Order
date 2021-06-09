class Public::ProductsController < ApplicationController

  def index
    @q = Product.ransack(params[:q]) #ransrakの検索メソッド
    @products = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def show
    @product = Product.find(params[:id])
  end
  
  def search
    if params[:q].present?
      @search = Product.ransack(search_params)
      @products = @search.result
    else 
      params[:q] = { sorts: 'id desc' }
      @search = Product.ransack()
      @products = Product.all
    end
  end
  
  private
  
  def search_params
    params.require(:q).permit(:sort)
  end

end

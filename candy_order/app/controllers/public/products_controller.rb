class Public::ProductsController < ApplicationController

  def index
    @q = Product.ransack(params[:q]) #ransrakの検索メソッド
    @products = @q.result(distinct: true).page(params[:page]).per(9)
    @genres = Genre.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    if params[:q].present?
      @search = Product.ransack(search_params)
      @products = @search.result.page(params[:page]).per(9)
      @genres = Genre.all
    else
      params[:q] = { sorts: 'id desc' }
      @search = Product.ransack(params[:q])
      @products = Product.all.page(params[:page]).per(9)
    end
  end

  private

  def search_params
    params.require(:q).permit(:sorts)
  end

end

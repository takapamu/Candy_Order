class Public::ShopsController < ApplicationController
  
   before_action :authenticate_shop!
  
  def show
    @shop = Shop.find(params[:id])
  end
  
  def edit
    @shop = Shop.find(params[:id])
  end
  
  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      redirect_to shop_path(@shop), success: '更新しました'  
    else
      flash[:danger] = '更新できませんでした'
      render 'edit'
    end
  end
  
  def destroy
  end
  
  private
  
  def  shop_params
    params.require(:shop).permit(:name,:postal_code,:address,:email,:telephone_number)
  end
  
end

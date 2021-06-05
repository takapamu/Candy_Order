class Admin::ShopsController < ApplicationController
    
    def index 
       @shops = Shop.all.page(params[:page]).per(10)
    end
    
    def show
        @shop = Shop.find(params[:id])
    end
end

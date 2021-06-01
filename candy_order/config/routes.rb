Rails.application.routes.draw do
  devise_for :admins, skip: :all
  devise_scope :admin do          #任意のルーティングだけ行う
    get 'login' => 'devise/sessions#new', as: :new_admin_session
    post 'login' => 'devise/sessions#create', as: :admin_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_admin_session
  end
  devise_for :shops, skip: :all
  devise_scope :shop do
    get 'shops/sign_in' => 'shops/sessions#new', as: 'new_shop_session'
    post 'shops/sign_in' => 'shops/sessions#create', as: 'shop_session'
    delete 'shops/sign_out' => 'shops/sessions#destroy', as: 'destroy_shop_session'
    get 'shops/sign_up' => 'shops/registrations#new', as: 'new_shop_registration'
    post 'shops' => 'shops/registrations#create', as: 'shop_registration'
    get 'shops/password/new' => 'shops/passwords#new', as: 'new_shop_password'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
    root :to => "homes#top"
    get "/thanks" =>"thanks#index"
  
    resources :shops, only: [:show, :edit, :update, :destroy]
    resources :products, only: [:index, :show]
    resources :orders, only: [:index, :show] do
      collection do #全てのデータを対象
        post :confirm
      end
    end
    resources :carts, only: [:show]
    post '/add_product' => 'carts#add_product' #カートに商品を追加
    post '/update_product' => 'carts#update_product'
    delete '/delete_product' => 'carts#delete_product'
    resources :address, only: [:index, :edit]
end

Rails.application.routes.draw do

  get 'search/search'
  devise_for :admins, skip: :all
  devise_scope :admin do
    get 'admins/sign_in' => 'devise/sessions#new', as: :new_admin_session
    post 'admins/sign_in' => 'devise/sessions#create', as: :admin_session
    delete 'admins/sign_out' => 'devise/sessions#destroy', as: :destroy_admin_session
    get 'admins/password/new' => 'shops/passwords#new', as: 'new_password'
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
    root  'inquiry#index'
    get   'inquiry'         => 'inquiry#index'
    post  'inquiry/confirm' => 'inquiry#confirm'
    post  'inquiry/thanks'  => 'inquiry#thanks'
    


    scope module: :public do
    resources :notifications, only: :index do
      collection do
        delete 'destroy_all'
      end
    end
    resources :shops, only: [:show, :edit, :update, :destroy] do
      collection do
            get :favorites
          end
      end
    resources :products, only: [:index, :show] do
       resource :favorites, only: [:create, :destroy]
      collection do
        match 'search' => 'products#search', via:[:get,:post]
      end
    end
    
    get '/search' => 'search#search'

    resources :carts, only: [:show] 
    delete 'destroy_all' => 'carts#destroy_all'
    post '/add_product' => 'carts#add_product' #カートに商品を追加
    post '/update_product' => 'carts#update_product'
    delete '/delete_product' => 'carts#delete_product'
    resources :orders, only: [:create,:index,:new,:show] do
     collection do
       post 'confirm'
       get  'confirm'
     end
    end
  end

    namespace :admin do
      resources :shops, only: [:index,:show]
      patch 'customers/:id' => 'customers#update'
      resources :orders, only: [:index,:edit,:update,:show]
      resources :genres, only: [:index,:edit,:create]
      patch 'genre/:id' => 'genres#update',as: 'genre'
      resources :products, only: [:index,:show,:edit,:new,:create,:update]
      resources :events
    end
end

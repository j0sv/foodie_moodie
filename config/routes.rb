Rails.application.routes.draw do


  get 'orders/index'

  root controller: :restaurants, action: :index
  resources :orders, only: [:create, :index]
  resources :restaurants, except: [:index]do
      resources :dishes
  end

end

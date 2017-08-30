Rails.application.routes.draw do

  resources :restaurants
  root controller: :restaurants, action: :index
  resources :orders, only: [:create, :show, :destroy]
  resources :charges

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: [:index, :show]
    end
  end
end

Rails.application.routes.draw do

  resources :restaurants, except: [:index]
  root controller: :restaurants, action: :index
end

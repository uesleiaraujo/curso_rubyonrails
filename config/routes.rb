Rails.application.routes.draw do
  #get 'products/index'
  resources :products, only: [:index, :new, :create]
  resources :restaurants
  devise_for :users
  #get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

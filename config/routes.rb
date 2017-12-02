Rails.application.routes.draw do
  root 'items#index'

  devise_for :users
  resources :accounts
  resources :items
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

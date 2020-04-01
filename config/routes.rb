Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "dashboard#index"

  devise_for :shops, controllers: {
    sessions: 'shop/sessions',
    registrations: 'shop/registrations'
  }

  resources :shops
  resources :products 
  resources :customers
  resources :orders
end

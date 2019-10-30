Rails.application.routes.draw do
  resources :orders
  resources :shippers
  root 'shippers#index'
end

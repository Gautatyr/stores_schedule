Rails.application.routes.draw do
  resources :shop
  root 'shop#index'
end

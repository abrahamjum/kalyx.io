Rails.application.routes.draw do
  devise_for :users
  resources :listings, :products

  root 'products#home'
end

Rails.application.routes.draw do
  devise_for :users

  resources :listings, :brands, :products

  root 'products#home'
  get '/contact' => 'products#contact'
end

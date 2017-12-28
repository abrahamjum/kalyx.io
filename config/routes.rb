Rails.application.routes.draw do
  devise_for :users
  resources :listings, :products, :brands

  root 'products#home'
  get '/contact' => 'products#contact'
end

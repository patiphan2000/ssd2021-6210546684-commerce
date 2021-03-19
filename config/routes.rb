Rails.application.routes.draw do
  resources :products
  devise_for :users
  root 'product#index'

  resources :product do
  end

end
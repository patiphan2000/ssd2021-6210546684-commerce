Rails.application.routes.draw do
  resources :categories
  devise_for :users
  root 'products#index'
  
  resources :products
  resources :categories do
    resources :product_categories
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


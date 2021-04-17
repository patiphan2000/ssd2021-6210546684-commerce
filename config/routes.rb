Rails.application.routes.draw do
  devise_for :users
  root 'users/products#index'
  
  namespace :users do
    resources :products do
      member do
        delete :delete_image
      end
    end
    resources :categories do
      resources :product_categories
    end
    namespace :products do
      post 'csv_upload'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


Rails.application.routes.draw do
  root 'product#index'

  resources :product do
  end

end
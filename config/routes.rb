Rails.application.routes.draw do
  resources :carts
  resources :line_items
  root 'store#index', as: 'store_index'
  #get 'homepage/index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'spa/index'
  get 'spa/*other', to: 'spa#index'  
  get 'spa', to: 'spa#index'

  #root 'homepage#index'
end

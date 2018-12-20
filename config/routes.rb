Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories
  resources :items
  resources :users
  resources :orders
  root 'categories#index'
  # root 'mst_items#index'
end

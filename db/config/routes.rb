Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories do
    resources :items
  end
  root 'categories#index'
  # root 'mst_items#index'
end

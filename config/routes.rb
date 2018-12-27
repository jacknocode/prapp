Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories
  resources :items
  resources :users
  resources :orders
  root 'categories#index'
  # root 'mst_items#index'
end

# Rails.application.routes.draw do

#   get 'order_detail/resources'
#   resources :categories do
#     collection do
#       get 'search'
#       post 'search'
#     end
#   end

#   resources :items do
#     collection do
#       get 'search'
#       post 'search'
#     end
#   end

#   resources :users do
#   collection do
#     get 'search'
#     post 'search'
#   end
# end
#   resources :orders
#   resources :order_details
#   root 'categories#index'
# end

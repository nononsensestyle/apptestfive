Rails.application.routes.draw do

  resources :products
  get 'static_pages/about'

  get 'static_pages/contact'

	#  get 'static_pages/index' - root is the home page
  root 'static_pages#landing_page'

  # added in 4.3 for app/views/orders
  resources :orders, only: [:index, :show, :create, :destroy] 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 
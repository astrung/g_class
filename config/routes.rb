Rails.application.routes.draw do
  resources :code_examples
#  get 'users/show'

  get 'friends/create'

  resources :goals
  resources :user_logs
  root 'static_pages#home'
  get 'static_pages/transforms2d'
  get 'static_pages/transforms3d'
  get 'static_pages/animations'
  get 'static_pages/backgrounds'
  get 'static_pages/border_images'
  get 'static_pages/box_sizing'
  get 'static_pages/buttons'
  get 'static_pages/colors'
  get 'static_pages/filters'
  get 'static_pages/flexbox'
  get 'static_pages/fonts'
  get 'static_pages/gradients'
  get 'static_pages/media_queries'
  get 'static_pages/mq_examples'
  get 'static_pages/multiple_columns'
  get 'static_pages/rounded_corners'
  get 'static_pages/shadows'
  get 'static_pages/text'
  get 'static_pages/transitions'
  get 'static_pages/user_interface'
  get 'static_pages/demo_test'
  devise_for :users
  resources :users, only: [:show, :index]
  resources :friends, only: [:create,:destroy,:update]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

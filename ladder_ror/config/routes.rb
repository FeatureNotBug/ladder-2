Rails.application.routes.draw do
  get 'creatives/index'

  get 'creatives/new'

  get 'creatives/create'

  get 'creatives/destroy'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'welcome#home'
  get 'campaigns/assets' => "campaigns#assets", as: :user_root
#  root 'campaigns#index'# -> I will do this once I can even get the rest working. LOW PRIORITY
  get 'campaigns/assets'
#  post 'audiences#create'
  post 'campaigns/assets' #-> hopefully won't need this. LOW PRIORITY
  get 'campaigns/structure'
  get 'campaigns/performance'

  resources :campaigns
  resources :audiences
  resources :messages
  
  resources :creatives, only: [:index, :new, :create, :destroy]

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  get 'campaigns/:id/assets' => 'campaigns#assets', as: :assets
  get 'campaigns/:id/structure' => 'campaigns#structure', as: :structure
  get 'campaigns/:id/performance' => 'campaigns#performance', as: :performance

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

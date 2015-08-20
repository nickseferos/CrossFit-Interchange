Rails.application.routes.draw do

  resources :cross_fit_classes
  resources :group_classes
  resources :pages

  root 'pages#index'

  get 'about' => 'pages#about_us'
  get 'child_care' => 'pages#child_care'
  get 'contact' => 'pages#contact'
  get 'free_trial' => 'pages#free_trial'
  get 'staff' => 'pages#staff'

  get 'crossfit_pricing' => 'cross_fit_classes#cf_pricing'
  get 'crossfit_schedule' => 'cross_fit_classes#cf_schedule'
  get 'crossfit' => 'cross_fit_classes#wicf'
  get 'wod' => 'cross_fit_classes#wod'

  get 'group_classes_pricing' => 'group_classes#gc_pricing'
  get 'group_classes_schedule' => 'group_classes#gc_schedule'
  get 'group_classes' => 'group_classes#group_classes'

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

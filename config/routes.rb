Rails.application.routes.draw do

  get 'journals/index'

  root 'pages#landing'

  #General
  resources :pages
  get 'about' => 'pages#staff'
  get 'child-care' => 'pages#child_care'
  get 'contact' => 'pages#contact'
  get 'free_trial' => 'free_trials#new'
  get 'staff' => 'pages#staff'
  get 'fitness-challenge' => 'pages#fitness_challenge'
  get 'blog' => 'pages#blog'
  get 'pages' => 'pages#blog'

  #CrossFit
  resources :cross_fit_classes
    post 'free_trials' => 'free_trials#new'
  get 'crossfit-pricing' => 'cross_fit_classes#cf_pricing'
  get 'crossfit-schedule' => 'cross_fit_classes#cf_schedule'
  get 'crossfit' => 'cross_fit_classes#wicf'
  get 'wod' => 'cross_fit_classes#wod'

  # Group Classes
  # resources :group_classes Commented out for new url structure
  get 'group-classes' => 'group_classes#index'
  get 'group-classes-pricing' => 'group_classes#gc_pricing'
  get 'group-classes-schedule' => 'group_classes#gc_schedule'
  get 'group-classes' => 'group_classes#index'

  #Console
  resources :console
  get 'console' => 'console#index'
  get 'console/journal'

  #Journal
  resources :journals

  #Users
  devise_for :users

  #Admin
  resources :free_trials
  get 'free_trials' => 'free_trials#index'
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  #Errors
  get '/404' => 'errors#not_found'
  get '/500' => 'errors#internal_server_error'

# Legacy patching from old site to new
  get '*path' + '.html' => redirect('/', status: 301)
  get '/sitemap', :to => redirect('/sitemap.xml', status: 301)
# Legacy patching from old underscore style links to new dash style links.
  get 'crossfit_schedule', to: redirect('crossfit-schedule', status: 301)
  get 'crossfit_pricing', to: redirect('crossfit-pricing', status: 301)
  get 'group_classes', to: redirect('group-classes', status: 301)
  get 'group_classes_schedule', to: redirect('group-classes-schedule', status: 301)
  get 'group_classes_pricing', to: redirect('group-classes-pricing', status: 301)


end

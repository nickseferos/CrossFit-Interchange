Rails.application.routes.draw do

  resources :free_trials
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Ckeditor::Engine => '/ckeditor'
	#Casein routes
	namespace :casein do
		resources :blogs
		resources :gc_schedules
		resources :cf_schedules
		resources :groupclasses
		resources :group_classes
		resources :staffs
		resources :workouts
	end


  resources :cross_fit_classes
    post 'free_trials' => 'free_trials#new'
  resources :group_classes
  resources :pages

  root 'pages#landing'

  get 'about' => 'pages#about_us'
  get 'child_care' => 'pages#child_care'
  get 'contact' => 'pages#contact'
  get 'free_trial' => 'free_trials#new'
  get 'staff' => 'pages#staff'
  get 'fitness_challenge' => 'pages#fitness_challenge'
  get 'blog' => 'pages#blog'
  get 'pages' => 'pages#blog'


  get 'crossfit_pricing' => 'cross_fit_classes#cf_pricing'
  get 'crossfit_schedule' => 'cross_fit_classes#cf_schedule'
  get 'crossfit' => 'cross_fit_classes#wicf'
  get 'wod' => 'cross_fit_classes#wod'

  get 'group_classes_pricing' => 'group_classes#gc_pricing'
  get 'group_classes_schedule' => 'group_classes#gc_schedule'
  get 'group_classes' => 'group_classes#index'

  get '/404' => 'errors#not_found'
  get '/500' => 'errors#internal_server_error'

# Legacy patching from old site to new
  get '*path' + '.html' => redirect('/')

  get '/sitemap', :to => redirect('/sitemap.xml')


end

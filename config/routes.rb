Rails.application.routes.draw do

	#Casein routes
	namespace :casein do
		resources :staffs
		resources :workouts
	end


  resources :cross_fit_classes
    post 'free_trial' => 'pages#free_trial'
  resources :group_classes
  resources :pages

  root 'pages#landing'

  get 'about' => 'pages#about_us'
  get 'child_care' => 'pages#child_care'
  get 'contact' => 'pages#contact'
  get 'free_trial' => 'pages#free_trial'
  get 'staff' => 'pages#staff'
  get 'fitness_challenge' => 'pages#fitness_challenge'

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

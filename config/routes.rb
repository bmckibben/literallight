Rails.application.routes.draw do

    resources :journals
	resources :nominees
  	devise_for :users
  	resources :users

	root 'home#home'
	
	get 'home/home' => 'home', :as => 'home'
	get 'static_pages/about' => 'static_pages#about', :as => 'static_about'
	get 'static_pages/help' => 'static_pages#help', :as => 'static_help'
	get 'static_pages/contact' => 'static_pages#contact', :as => 'static_contact'
	get 'static_pages/startrek' => 'static_pages#star_trek', :as => 'static_startrek'
	get 'static_pages/sysiphus' => 'static_pages#sysiphus', :as => 'static_sysiphus'
	get 'static_pages/moderation' => 'static_pages#moderation', :as => 'static_moderation'
	get 'angular_test/index' => 'angular_test', :as => 'angular_test'
  	get 'users/list' => 'users#list', :as => 'users_list'
  	get 'journals/musings' => 'journals#musings', :as => 'journals_musings'
  	
end

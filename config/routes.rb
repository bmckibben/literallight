Rails.application.routes.draw do

    resources :journals
	resources :nominees
  	devise_for :users
  	resources :users

	root 'home#home'
	
	get 'home/home' => 'home', :as => 'home'
	get 'static_pages/about' => 'static_pages#about', :as => 'static_pages_about'
	get 'static_pages/help' => 'static_pages#help', :as => 'static_pages_help'
	get 'static_pages/contact' => 'static_pages#contact', :as => 'static_pages_contact'
	get 'static_pages/startrek' => 'static_pages#star_trek', :as => 'static_pages_startrek'
	get 'static_pages/sysiphus' => 'static_pages#sysiphus', :as => 'static_pages_sysiphus'
	get 'static_pages/moderation' => 'static_pages#moderation', :as => 'static_pages_moderation'
	get 'static_pages/novels' => 'static_pages#novels', :as => 'static_pages_novels'
	get 'angular_test/index' => 'angular_test', :as => 'angular_test_index'
  	get 'users/list' => 'users#list', :as => 'users_list'
  	get 'journals/musings' => 'journals#musings', :as => 'journals_musings'
  	
end

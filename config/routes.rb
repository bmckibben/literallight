Rails.application.routes.draw do

    resources :journals
	resources :nominees
  	devise_for :users
  	resources :users

	root 'home#home'
	
	get 'static_pages/about' => 'static_pages#about'
	get 'static_pages/help' => 'static_pages#help'
	get 'static_pages/contact' => 'static_pages#contact'
	get 'static_pages/startrek' => 'static_pages#star_trek'
	get 'static_pages/sysiphus' => 'static_pages#sysiphus'
	get 'static_pages/moderation' => 'static_pages#moderation'
	get 'static_pages/novels' => 'static_pages#novels'
	get 'home/home' => 'home'
	get 'angular_test/index' => 'angular_test'
  	get 'users/list' => 'users#list'
  	get 'journals/musings' => 'journals#musings', as journals_musings
  	
end

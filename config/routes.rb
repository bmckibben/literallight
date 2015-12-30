Rails.application.routes.draw do

  	devise_for :users
	root 'home#home'
	#get "angular_test", to: "angular_test#index"
	#get 'home', to: "home#home"
	get 'static_pages/about', :as => 'static_about'
	get 'static_pages/help', :as => 'static_help'
	get 'static_pages/contact', :as => 'static_contact'
	get 'static_pages/startrek', :as => 'static_star_trek'
	get 'static_pages/sysiphus', :as => 'static_sysiphus'
	get 'static_pages/novels', :as => 'static_novels'
	get 'home/home', :as => 'home'
	get 'angular_test/index', :as => 'angular_test'
  	
end

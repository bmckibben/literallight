Rails.application.routes.draw do



	root 'home#home'
	
	get 'home/home' => 'home', :as => 'home'
	get 'static_pages/about' => 'static_pages#about', :as => 'static_about'
	get 'static_pages/help' => 'static_pages#help', :as => 'static_help'
	get 'static_pages/contact' => 'static_pages#contact', :as => 'static_contact'
	get 'static_pages/startrek' => 'static_pages#startrek', :as => 'static_startrek'
	get 'static_pages/sysiphus' => 'static_pages#sysiphus', :as => 'static_sysiphus'
	get 'static_pages/moderation' => 'static_pages#moderation', :as => 'static_moderation'
	get 'glossaries/list' => 'glossaries#list', :as => 'glossaries_list'
	get 'angular_test/index' => 'angular_test', :as => 'angular_test'
	get 'angular_test/paging' => 'paging', :as => 'paging'
  	get 'users/list' => 'users#list', :as => 'users_list'
  	get 'journals/musings' => 'journals#musings', :as => 'journals_musings'
  	get 'show_musing/:id' => 'journals#show_musing', :as => 'journals_show_musing'
 
    resources :glossaries
    resources :journals
	resources :nominees
  	devise_for :users
  	resources :users
  	
end

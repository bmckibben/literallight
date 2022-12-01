Rails.application.routes.draw do
  resources :logs
  resources :tasks
  resources :projects
  resources :task_statuses
  resources :project_statuses
  resources :products
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  resources :quotes
	get "home/home", to: "home#home", as: :home_home
  post "home/contact(.:format)", to: "home#contact", as: :contact  
end

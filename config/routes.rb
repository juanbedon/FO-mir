Rails.application.routes.draw do

	root 'questions#index'

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'

  resources :users, only: [:new, :create]
	resources :questions

end
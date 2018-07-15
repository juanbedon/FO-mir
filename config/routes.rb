Rails.application.routes.draw do

	get '/questions', to: 'questions#index'
	get '/questions/new', to: 'questions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
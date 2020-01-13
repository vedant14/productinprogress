Rails.application.routes.draw do

 	resources :posts
	resources :topics
	devise_for :users, path: '', path_names: { sign_in: 'adminLogin'}, skip: [:registration] do
	  get '/users/sign_out' => 'devise/sessions#destroy'
	end

	get 'about-product', to: 'static#about'
	get 'static/contact'	
	root to: 'static#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
	get 'about-product', to: 'static#about'
  get 'static/contact'
  resources :blogs

  root to: 'static#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

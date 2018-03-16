Rails.application.routes.draw do
  resources :partners
  resources :histories
  resources :contacts

	root 'contacts#index'

  get "/contacts", to: 'contacts#index'
  get "/unknown", to: 'contacts#unknown'
  get "/contact-history/:contact", to: 'histories#index'

  post 'authenticate', to: 'authentication#authenticate'
  get 'authenticate', to: 'authentication#authenticate'
end

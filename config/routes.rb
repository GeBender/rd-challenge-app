Rails.application.routes.draw do
  resources :histories
  resources :contacts

	# root 'application#hello'
  post 'authenticate', to: 'authentication#authenticate'
  get 'authenticate', to: 'authentication#authenticate'
end

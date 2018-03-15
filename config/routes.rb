Rails.application.routes.draw do
  resources :histories
  resources :contacts
	root 'application#hello'
end

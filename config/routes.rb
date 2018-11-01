Rails.application.routes.draw do
  root "static_pages#home"
  get 'registration/new'
  post 'registration/create'
  get 'registration/connect'
  post 'registration/check'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gossip
  resources :sessions, only: [:new, :create, :destroy]
end

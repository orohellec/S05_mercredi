Rails.application.routes.draw do
  root "static_pages#home"
  get 'user/new'
  post 'user/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  delete '/logout', to: 'sessions#destroy', as: :destroy_session
  resources :sessions, only: [:new, :create, :destroy]
  resources :gossips
end

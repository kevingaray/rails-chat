Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'text', to: 'texts#create'
  mount ActionCable.server, at: '/cable'
  # users log in 
  get 'signup', to: 'users#new'
  resources :users, only: [:create]
end

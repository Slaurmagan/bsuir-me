Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'chatroom#index'
  get '/signup' => 'users#new'
  post 'signup' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/message' => 'messages#create'
  delete '/logout' => 'sessions#destroy'
  mount ActionCable.server => "/cable"
end

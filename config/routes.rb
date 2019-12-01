Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/sessions/new', to: 'sessions#new', as: "log_in"
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to:  'sessions#destroy'
end

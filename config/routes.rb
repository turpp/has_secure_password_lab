Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'login', to:'sessions#new'
  get '/homepage', to: 'users#show'
  post '/session', to: 'sessions#create'
end

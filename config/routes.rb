Rails.application.routes.draw do
  resources :helprequests
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :stats
  resources :schedules
  resources :users
  get 'controller1/home'

  get 'controller1/about'

  get 'controller1/help'
  
  get '/signup', to: 'users#new'
  
  get 'stats/search'
  
  post 'stats/display', to: 'stats#display'

  get 'schedules/search'
  
  post 'schedules/display', to: 'schedules#display'
  
  get '/login', to: 'sessions#new'
  
  post '/login', to: 'sessions#create'
  
  delete '/logout', to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

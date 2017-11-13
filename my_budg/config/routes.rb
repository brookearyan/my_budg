Rails.application.routes.draw do

  root   'static_pages#home'

  get    '/home',    to: 'static_pages#home'
  get    '/about',   to: 'static_pages#about'
  get    '/help',   to: 'static_pages#help'

  get    '/signup',  to: 'users#new'
  post    '/users',  to: 'users#create'
  resources :users, except: [:new, :create]

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  delete '/logout',  to: 'sessions#destroy'

resources :expenses

resources :bills

resources :months

end

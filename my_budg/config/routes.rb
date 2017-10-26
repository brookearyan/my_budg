Rails.application.routes.draw do

  get 'static_pages/home'

  get 'static_pages/help'

  root   'static_pages#home'

  get    '/home',    to: 'static_pages#home'
  get    '/about',   to: 'static_pages#about'
  get    '/help',   to: 'static_pages#help'

  get    '/signup',  to: 'users#new'
  post    '/signup',  to: 'users#create'
  get    '/profile/:id',  to: 'users#show'
  get    '/profile/:id/edit',  to: 'users#edit'
  patch    '/profile/:id',  to: 'users#update'
  delete    '/profile/:id',  to: 'users#destroy'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get    '/addexpense',  to: 'expenses#new'
  post    '/addexpense',  to: 'expenses#create'
  get    '/expenses/:id',  to: 'expenses#show'
  delete    '/expenses/:id',  to: 'expenses#destroy'

  get    '/addbill',  to: 'bills#new'
  post    '/addbill',  to: 'bills#create'
  get    '/bills/:id',  to: 'bills#show'
  delete    '/bills/:id',  to: 'bills#destroy'

  get    '/month/:id',  to: 'months#show'
  get    '/months',  to: 'months#index'

  resources :users

  resources :months

  resources :bills

  resources :expenses

end

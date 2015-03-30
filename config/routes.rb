Rails.application.routes.draw do
  resources :categories
  resources :users

  # root path akan mengarahkan pada home controller dan methods index
  root'home#index'

  get 'users/index'

  resources :anouncements
  # get '/anouncements', to: 'anouncements#index'
  # get 'anouncements/new', to: 'anouncements#new'

  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
end

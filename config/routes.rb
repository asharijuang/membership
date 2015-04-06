Rails.application.routes.draw do
  resources :categories
  resources :users
  resources :sessions, only: [:new, :create, :destroy] do
    get 'sessions/new', as: 'login'
  end

  # root path akan mengarahkan pada home controller dan methods index
  root'home#index'

  resources :anouncements
  # get '/anouncements', to: 'anouncements#index'
  # get 'anouncements/new', to: 'anouncements#new'

end

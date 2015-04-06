Rails.application.routes.draw do
  resources :categories
  resources :users
  resources :sessions, only: [:new, :create, :destroy] do
    get 'sessions/new', as: 'login'
    delete 'logout', to: 'sessions#destroy', as: 'logout'
  end
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'

  # root path akan mengarahkan pada home controller dan methods index
  root'home#index'

  resources :anouncements
  # get '/anouncements', to: 'anouncements#index'
  # get 'anouncements/new', to: 'anouncements#new'

end

Rails.application.routes.draw do
  
  get 'articles/index', to: 'articles#index'
  resources :users
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  root "pages#home"
  resources :articles

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
end

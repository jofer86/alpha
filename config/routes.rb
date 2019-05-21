Rails.application.routes.draw do
  
  get 'articles/index', to: 'articles#index'
  resources :users
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  root "pages#home"
  resources :articles
  
end

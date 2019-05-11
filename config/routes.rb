Rails.application.routes.draw do
  
  get 'articles/index', to: 'articles#index'
  root "articles#index"
  resources :articles

end

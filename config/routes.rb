Rails.application.routes.draw do
  
  get 'articles/index', to: 'articles#index'
  root "pages#home"
  resources :articles

end

Rails.application.routes.draw do
  get 'registration/new', to: 'registration#new'
  get 'registration/new', to: 'registration#home'
  post 'registration/new', to: 'registration#check'
  root to: 'static_pages#home'
  get 'static_pages/home', to: 'static_pages#home'
  resources :gossips do
    resources :comments
  end
  resources :users
  delete '/', to: 'registration#destroy'
end

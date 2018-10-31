Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'static_pages/home', to: 'static_pages#home'
  resources :gossips do
    resources :comments
  end
end

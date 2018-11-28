Rails.application.routes.draw do
  resources :users
  post 'login', to: 'users#login'

  resources :posts
end

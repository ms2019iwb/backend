Rails.application.routes.draw do
  resources :users
  post 'login', to: 'users#login'

  resources :posts
  get 'postscount', to: 'posts#count'
end

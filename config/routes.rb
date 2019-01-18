Rails.application.routes.draw do
  resources :users
  post 'login', to: 'users#login'

  resources :posts
  get 'lastpost', to: 'posts#last'
  get 'postscount', to: 'posts#count'
  get 'burncount', to: 'posts#burnCount'
  get 'excount', to: 'posts#exCount'
end

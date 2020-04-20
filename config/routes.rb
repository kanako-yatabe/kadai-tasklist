Rails.application.routes.draw do
  #トップページをtasks#indexにするため
  root to: 'tasks#index'
  
  #lesson13で実装した7つの機能
  resources :tasks
  
  #ログインのルーティング
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  #ユーザ登録のルーティング
  get 'signup', to: 'users#new'
  resources :users, only: [:create]
  
end

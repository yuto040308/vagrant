Rails.application.routes.draw do
  get 'home/top'
  get 'home/about'
  devise_for :users
  get 'books/create'
  get 'books/edit'
  get 'books/update'
  get 'books/show'
  get 'books/index'
  get 'books/destroy'
  get 'users/edit'
  get 'users/index'
  get 'users/show'
  get 'users/about'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ログイン機能が完成するまでの仮で設定
  root 'home#top'
end

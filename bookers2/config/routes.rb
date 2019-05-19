Rails.application.routes.draw do
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
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ログイン機能が完成するまでの仮で設定
  root 'books#index'
end

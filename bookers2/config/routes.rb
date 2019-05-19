Rails.application.routes.draw do
  get 'books/create'
  get 'books/edit'
  get 'books/update'
  get 'books/show'
  get 'books/index'
  get 'books/destroy'
  get 'users/edit'
  get 'users/index'
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

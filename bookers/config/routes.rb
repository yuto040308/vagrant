Rails.application.routes.draw do
  
  # resourcesで定義するので、一旦無効化する。
  # get 'bookers/index'
  # get 'bookers/show'
  # get 'bookers/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookers

  root to: 'bookers#top'
end

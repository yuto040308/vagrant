Rails.application.routes.draw do
  get 'post_images/index'
  get 'post_image/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # deviseではログイン認証が成功した場合、標準でrootパスへリダイレクトされる
  # それを変更して、投稿一覧画面を表示するためにルート変更
  root 'post_images#index'

  # resources指定。使うルーティングだけonlyで指定してルーティングを絞る
  resources :post_images, only: [:new, :create, :index, :show]

end

Rails.application.routes.draw do
  get 'post_images/index'
  get 'post_image/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # deviseではログイン認証が成功した場合、標準でrootパスへリダイレクトされる
  # それを変更して、投稿一覧画面を表示するためにルート変更
  root 'post_images#index'

  # resources指定。使うルーティングだけonlyで指定してルーティングを絞る
  # コメントは投稿画像に対してコメントされる
  # post_commentはpost_imageに結びつき、親子関係になる。
  # 親 post_image - 子 favorites
  #    			  - 子 post_comments
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  	resource :favorites, only: [:create, :destroy]
  	# resourcesとresourceの違いは、resourceにすると、コントローラのidがリクエストに
  	# 含まれなくなる。1つのリソースに対するCRUD（クラッド）処理を行うために使う。
  	resource :post_comments, only: [:create, :destroy]
  end

end

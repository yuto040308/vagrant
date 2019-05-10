Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # topというURLにアクセスしたときに、rootコントローラのtopメゾットを呼ぶ

  get 'top' => 'root#top'

  post 'posts' => 'posts#create'
  # 実際には、http://localhost:3000/posts URLが叩かれた時に動く
  get 'posts' => 'posts#index'

  # 名前付きルート。 posts#showの設定をpostとして利用できるようにする。
  # ビューやコントローラ上で、posts_pathという形で呼び出せる。
  get 'posts/:id' => 'posts#show', as: 'post'

  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'

  # 更新用のため、patchを利用
  patch 'posts/:id' => 'posts#update', as: 'update_post'

  delete 'posts/:id' => 'posts#destroy', as: 'destroy_post'

end

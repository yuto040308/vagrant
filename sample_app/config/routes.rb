Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # topというURLにアクセスしたときに、rootコントローラのtopメゾットを呼ぶ
  get 'top' => 'root#top'

  post 'posts' => 'posts#create'

  get 'posts' => 'posts#index'

  # 名前付きルート。 posts#showの設定をpostとして利用できるようにする。
  get 'posts/:id' => 'posts#show', as: 'post'

  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'

end

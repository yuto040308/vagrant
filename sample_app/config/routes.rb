Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # topというURLにアクセスしたときに、rootコントローラのtopメゾットを呼ぶ
  get 'top' => 'root#top'

  post 'posts' => 'posts#create'

end

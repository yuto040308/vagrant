Rails.application.routes.draw do
  # 通常は、以下の4行を書く必要があるが、RESTful（index~destroy）
  # をresourcesを指定して、自動で設定してもらう
  # resourcesと書くことによって、index~destroyまでの7つのルーティングをしてくれる。
  #get 'blogs/show'
  #get 'blogs/index'
  #get 'blogs/new'
  #get 'blogs/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
end

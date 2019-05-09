class PostsController < ApplicationController
  def new
  	# 空のモデルをビューに渡す
  	@post = Post.new
  end
end

class FavoritesController < ApplicationController
	def create
		# 子の要素をparamsで取得
		post_image = PostImage.find(params[:post_image_id])
		# 以下の指定と同じことをやっている。
		# favorite = Favorite.new(user_id: current_user.id, post_image_id: post_image.id)
		# current.user.faboritesとしていすると、favoriteにcurrent_userの値が入った状態を表す。
		favorite = current_user.favorites.new(post_image_id: post_image.id)
		favorite.save
		redirect_to post_image_path(post_image)
	end

	def destroy
		post_image = PostImage.find(params[:post_image_id])
		favorite = current_user.favorites.find_by(post_image_id: post_image.id)
		favorite.destroy
		redirect_to post_image_path(post_image)
	end
end

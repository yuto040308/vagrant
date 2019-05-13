class PostImagesController < ApplicationController

	def new
		@post_image = PostImage.new
	end

	def create
		@post_image = PostImage.new(post_image_params)
		@post_image.user_id = current_user.id
		@post_image.save
		redirect_to post_images_path
	end

	def index
		@post_images = PostImages.all
	end

	def show
	end

	# 投稿データのストロングパラメータ
	# post_image_paramsでは、フォームで入力されたデータが投稿データとして
	# 許可されているパラメータかチェックを行っている。
	private
	def post_image_params
		params.require(:post_image).permit(:shop_name, :image, :caption)
	end
end

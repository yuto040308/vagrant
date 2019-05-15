class PostImagesController < ApplicationController

	def new
		@post_image = PostImage.new
	end

	def create
		@post_image = PostImage.new(post_image_params)
		@post_image.user_id = current_user.id
		if @post_image.save
			redirect_to post_images_path
		else
			#保存に失敗した場合は、new.html.erbを表示するようにする。
			render :new
		end
	end

	def index
		# ページング機能のため、1ページ分の決められた数のデータを新しい順に取得する。
		@post_images = PostImage.page(params[:page]).reverse_order
	end

	def show
		@post_image = PostImage.find(params[:id])
		@post_comment = PostComment.new

	end

	def destroy
		@post_image = PostImage.find(params[:id])
		@post_image.destroy
		redirect_to post_images_path
		
	end

	# 投稿データのストロングパラメータ
	# post_image_paramsでは、フォームで入力されたデータが投稿データとして
	# 許可されているパラメータかチェックを行っている。
	private
	def post_image_params
		params.require(:post_image).permit(:shop_name, :image, :caption)
	end
end

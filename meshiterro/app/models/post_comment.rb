class PostComment < ApplicationRecord
	# アソシエーション機能（モデル間の関係性を機能として持たせること）
	# has_manyの逆。
	# user 			1:N post_comment
	# post_image	1:N post_comment
	belongs_to :user
	belongs_to :post_image
end

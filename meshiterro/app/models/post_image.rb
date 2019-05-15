class PostImage < ApplicationRecord

	# アソシエーション機能（モデル間の関係性を機能として持たせること）
	# has_manyの逆。
	# PostImageモデルからuser_idに紐づいてUserモデルを参照できることを指している。
	# PostImageモデルに紐づくのは、1つのUserモデルなので、単数系になる。
	belongs_to :user

	# refileを使用する上でのルール
	# _idは含めない
	attachment :image

	# 画像が削除された際に、コメントも併せて削除する。
	has_many :post_comments, dependent: :destroy
	# 画像が削除された際に、いいねも併せて削除する。
	has_many :favorites, dependent: :destroy

	# 画像、ショップ名の入力を必須にするバリデーション
	validates :shop_name, presence: true
	validates :image, presence: true

	# 引数で渡されたユーザーのidがfavoritesテーブル内に存在しているか
	# 確認する関数
	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end
	
end

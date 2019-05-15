class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # アソシエーション機能（モデル間の関係性を機能として持たせること）
  # has_manyの後には、1:Nの関係になるモデル名の複数系を記述する。
  has_many :post_images, dependent: :destroy
  # post_commentモデルに対しても関係性を記載
  # dependent: :destroyは、has_manyで使えるオプション。
  # 1:Nの関係の1のデータが削除された時に、関連するNのデータも
  # 併せて削除してくれる。
  has_many :post_comments, dependent: :destroy

  # favoritesとの関連づけ
  has_many :favorites, dependent: :destroy
end

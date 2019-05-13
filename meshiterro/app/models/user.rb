class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # アソシエーション機能（モデル間の関係性を機能として持たせること）
  # has_manyの後には、1:Nの関係になるモデル名の複数系を記述する。
  has_many :post_images, dependent: :destroy
end

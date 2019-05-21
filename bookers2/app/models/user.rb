class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # 1:Nの関係性を記述
  # 1 User:N Book
  has_many :books, dependent: :destroy

  # ユーザー名の空白や文字数を判定するバリデーション
  # 2~20文字以外は許可しない
  validates :name, presence: true
  validates :name, length: { in: 2..20 }

  # 自己紹介文の長さは最大50文字とする
  validates :introduction, length: { maximum: 50 }

  # refile使用 _idは含めない
  attachment :profile_image

end

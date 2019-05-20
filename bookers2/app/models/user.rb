class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # 1:Nの関係性を記述
  # 1 User:N Book
  has_many :books, dependent: :destroy

  # refile使用 _idは含めない
  attachment :profile_image

end

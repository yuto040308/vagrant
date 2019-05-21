class Book < ApplicationRecord

	# 1:Nの関係性を記述
  	# 1 User:N Book
  	belongs_to :user

  	# bookの空白や文字数を判定するバリデーション
  	validates :title, presence: true
  	validates :body, presence: true

  	# 感想文が200文字以上の場合はエラーとする。
  	validates :body, length: { maximum: 200 }

end

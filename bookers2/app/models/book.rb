class Book < ApplicationRecord

	# 1:Nの関係性を記述
  	# 1 User:N Book
  	belongs_to :user

end

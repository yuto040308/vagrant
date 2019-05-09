class Post < ApplicationRecord
	# gemであるrefileを使用するため、attachmentメゾットが必要になる。
	attachment :image
end

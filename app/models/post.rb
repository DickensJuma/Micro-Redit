class Post < ApplicationRecord
	validates :body, length: { maximum: 500 }
	belong_to :user
end

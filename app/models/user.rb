class User < ApplicationRecord
	validates :name, length: { minimum: 5, maximum: 30 }
	has_many :posts
end

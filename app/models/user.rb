class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5, maximum: 30 }
  validates :email, presence: true
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end

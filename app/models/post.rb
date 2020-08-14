class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { minimum: 10 }
  validates :body, presence: true
  validates :body, length: { maximum: 500 }
  validates :user, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
end

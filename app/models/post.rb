# frozen_string_literal: true

class Post < ApplicationRecord
  validates :body, length: { maximum: 500 }
  validates :user_id, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
end

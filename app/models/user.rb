# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, length: { minimum: 5, maximum: 30 }
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end

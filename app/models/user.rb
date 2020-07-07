# frozen_string_literal: true

# This model is for User
class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true
end

class User < ApplicationRecord
  has_many :posts
  validates :user_name, presence: true, length: { in: 4..12}, uniqueness: true
  validates :email, confirmation: true
end

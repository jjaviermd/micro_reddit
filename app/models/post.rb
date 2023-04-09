class Post < ApplicationRecord
  belongs_to :user
  has_many :reactions
  validates :content, presence: true, length: {in: 5..120}
  validates :user, presence: true
end

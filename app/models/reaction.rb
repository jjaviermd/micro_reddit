class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  validates :user, presence: true
  validates :post, presence: true
  validates :content, presence: true, length: {in: 5..120}
end

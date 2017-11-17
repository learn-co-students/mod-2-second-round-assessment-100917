class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances
  validates :rating, inclusion: { in: [1,2,3,4,5]}
end

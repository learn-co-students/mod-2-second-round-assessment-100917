class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  validates :rating, presence:true, inclusion: {in: 1..5} #just showing that I know i need a validation here, not confident about syntax
end

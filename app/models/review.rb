class Review < ApplicationRecord
  belongs_to :cocktail

  validates :description, presence: true
  validates :rating, presence: true

  RATING = [1, 2, 3, 4, 5]
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATING } 
  validates :author, presence: true, uniqueness: true
end

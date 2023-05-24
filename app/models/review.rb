class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = (0..5).to_a
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: RATING }
end

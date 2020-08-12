class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: true
  validates_numericality_of :rating, greater_than_or_equal_to: 0, less_than_or_equal_to: 5
end

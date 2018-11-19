class Job < ApplicationRecord
  validates :name, uniqueness: true
  validates :cost, numericality: { greater_than_or_equal_to: 100 }
  validates :descrip, length: { minimum: 20 }
end

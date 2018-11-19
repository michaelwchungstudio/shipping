class Job < ApplicationRecord
	has_and_belongs_to_many :boats, through: :boats_jobs
  
  validates :name, uniqueness: true
  validates :cost, numericality: { greater_than_or_equal_to: 100 }
  validates :descrip, length: { minimum: 20 }
end

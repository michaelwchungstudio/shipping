class Boat < ApplicationRecord
  validates :name, uniqueness: true
  has_and_belongs_to_many :jobs, through: :boats_jobs

end

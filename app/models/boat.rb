class Boat < ApplicationRecord
  has_many :jobs, through :boats_jobs

  validates :name, uniqueness: true
end

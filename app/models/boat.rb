class Boat < ApplicationRecord
  has_and_belongs_to_many :jobs, through: :boats_jobs

  validates :name, uniqueness: true
  has_and_belongs_to_many :jobs, through: :boats_jobs


  def showcase
    "Name: #{name} Number of Containers: #{no_containers}"
  end

end

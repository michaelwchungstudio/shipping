class CreateBoatsJobsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :boats_jobs do |t|
      t.integer :boat_id
      t.integer :job_id
    end
  end
end

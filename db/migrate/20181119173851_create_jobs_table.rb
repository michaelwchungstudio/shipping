class CreateJobsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :origin
      t.string :destination
      t.float :cost
      t.integer :containers_needed
      t.string :descrip
    end
  end
end

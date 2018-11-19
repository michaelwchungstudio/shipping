class CreateBoatsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :no_containers
      t.string :loc
    end
  end
end

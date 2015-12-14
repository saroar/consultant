class AlterClientsAddColsultantIdColumn < ActiveRecord::Migration
  def change
    add_column :clients, :consultant_id, :integer
    add_index :clients, :consultant_id
  end
end

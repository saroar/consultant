class AlterConsultantsAddClientIdColumn < ActiveRecord::Migration
  def change
    add_column :consultants, :client_id, :integer
    add_index :consultants, :client_id
  end
end

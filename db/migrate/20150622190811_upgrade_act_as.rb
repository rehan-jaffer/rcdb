class UpgradeActAs < ActiveRecord::Migration
  def change
    remove_column :drugs, :subdrug_id
    remove_column :drugs, :subdrug_type
    change_table :drugs do |t|
      t.actable
    end
  end
end

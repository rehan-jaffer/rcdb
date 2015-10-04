class ChangeOnsetField < ActiveRecord::Migration
  def change
    remove_column :drugs, :onset
    add_column :drugs, :onset, :hstore, :default => {}
  end
end

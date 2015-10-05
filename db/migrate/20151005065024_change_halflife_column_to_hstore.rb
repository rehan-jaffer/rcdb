class ChangeHalflifeColumnToHstore < ActiveRecord::Migration
  def change
    remove_column :drugs, :half_life
    add_column :drugs, :half_life, :hstore, :default => {}
  end
end

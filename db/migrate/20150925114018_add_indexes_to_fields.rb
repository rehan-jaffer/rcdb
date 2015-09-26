class AddIndexesToFields < ActiveRecord::Migration
  def change
    add_index :drugs, :primary_name
  end
end

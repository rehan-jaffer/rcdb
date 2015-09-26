class AddAffinityToDrugsData < ActiveRecord::Migration
  def change
    add_column :drugs, :affinity, :hstore
  end
end

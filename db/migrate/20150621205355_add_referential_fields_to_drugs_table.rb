class AddReferentialFieldsToDrugsTable < ActiveRecord::Migration
  def change
    add_column :drugs, :subdrug_id, :integer
    add_column :drugs, :subdrug_type, :string
  end
end

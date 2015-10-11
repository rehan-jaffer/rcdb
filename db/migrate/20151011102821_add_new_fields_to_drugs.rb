class AddNewFieldsToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :side_effects, :string, array: true
    add_column :drugs, :references, :string, array: true
  end
end

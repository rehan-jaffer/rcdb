class AddSolubilityToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :solubility, :string, array: true
  end
end

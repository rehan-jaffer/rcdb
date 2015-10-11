class AddDefaultsToArrayFieldsOnDrugs < ActiveRecord::Migration
  def change
    change_column :drugs, :side_effects, :string, array: true, default: []
    change_column :drugs, :references, :string, array: true, default: []
    change_column :drugs, :classes, :string, array: true, default: []
    change_column :drugs, :solubility, :string, array: true, default: []
    change_column :drugs, :articles, :string, array: true, default: []
    change_column :drugs, :fatalities, :string, array: true, default: []
  end
end

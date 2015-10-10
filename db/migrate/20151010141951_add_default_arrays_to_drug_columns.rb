class AddDefaultArraysToDrugColumns < ActiveRecord::Migration
  def change
    change_column :drugs, :trade_names, :string, array: true, default: []
    change_column :drugs, :other_names, :string, array: true, default: []
    add_column :drugs, :classes, :string, array: true, default: []
    remove_column :stimulants, :classes
    remove_column :psychedelics, :classes
  end
end

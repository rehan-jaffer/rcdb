class RemoveArraysFromDrugs < ActiveRecord::Migration
  def change
    remove_column :drugs, :effects
    remove_column :drugs, :side_effects
  end
end

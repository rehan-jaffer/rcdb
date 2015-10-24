class ChangeEquivalenceToDecimal < ActiveRecord::Migration
  def change
    change_column :benzodiazepines, :valium_equiv, :decimal
  end
end

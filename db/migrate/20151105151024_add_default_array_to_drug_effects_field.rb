class AddDefaultArrayToDrugEffectsField < ActiveRecord::Migration
  def change
    change_column :drugs, :effects, :string, as: :array, :default => []
  end
end

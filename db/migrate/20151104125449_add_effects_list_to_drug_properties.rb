class AddEffectsListToDrugProperties < ActiveRecord::Migration
  def change
    add_column :drugs, :effects, :string, as: :array
  end
end

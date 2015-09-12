class RemoveTypeFromCannabinoids < ActiveRecord::Migration
  def change
    remove_column :cannabinoids, :drug_type
  end
end

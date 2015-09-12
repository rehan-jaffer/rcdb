class RemoveIdFromCannabinoids < ActiveRecord::Migration
  def change
    remove_column :cannabinoids, :drug_id
  end
end

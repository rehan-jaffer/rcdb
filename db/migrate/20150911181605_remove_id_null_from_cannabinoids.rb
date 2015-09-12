class RemoveIdNullFromCannabinoids < ActiveRecord::Migration
  def change
    change_column :cannabinoids, :drug_id, :integer
  end
end

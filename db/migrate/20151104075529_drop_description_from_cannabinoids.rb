class DropDescriptionFromCannabinoids < ActiveRecord::Migration
  def change
    remove_column :cannabinoids, :description
  end
end

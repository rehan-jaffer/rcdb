class RemoveCruftFromModels < ActiveRecord::Migration
  def change
    remove_column :cannabinoids, :affinity
    remove_column :cannabinoids, :full_name
    remove_column :benzodiazepines, :affinity
  end
end

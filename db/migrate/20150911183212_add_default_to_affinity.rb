class AddDefaultToAffinity < ActiveRecord::Migration
  def change
    change_column :cannabinoids, :affinity, :hstore, default: {}
  end
end

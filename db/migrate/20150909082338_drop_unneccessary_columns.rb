class DropUnneccessaryColumns < ActiveRecord::Migration
  def change
    remove_column :cannabinoids, :papers
    remove_column :cannabinoids, :fatalities
    remove_column :cannabinoids, :articles
  end
end

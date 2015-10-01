class AddFlagsToReports < ActiveRecord::Migration
  def change
    add_column :reports, :moderated, :boolean, :default => false, :null => false
    add_column :reports, :approved, :boolean, :default => false, :null => false
  end
end

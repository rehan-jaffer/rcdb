class AddDrugIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :drug_id, :integer
  end
end

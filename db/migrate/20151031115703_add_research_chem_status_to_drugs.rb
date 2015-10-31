class AddResearchChemStatusToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :research_chemical, :boolean, default: true
  end
end

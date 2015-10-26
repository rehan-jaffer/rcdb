class AddChemfieldToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :chemdata, :json
  end
end

class AddCidToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :cid, :string
  end
end

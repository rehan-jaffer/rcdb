class AddBasicColumnsToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :papers, :string, array: true
    add_column :drugs, :articles, :string, array: true
    add_column :drugs, :fatalities, :string, array: true
  end
end

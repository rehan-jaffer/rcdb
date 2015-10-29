class AddDataStorageFieldsToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :trends_array, :string, as: :array
    add_column :drugs, :trends_buy_array, :string, as: :array
  end
end

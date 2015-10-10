class TransferDrugPropertiesToUser < ActiveRecord::Migration
  def change
    remove_column :drugs, :user_type
    remove_column :drugs, :approved
    add_column :users, :user_type, :string, :default => "default"
    add_column :users, :approved, :boolean, :default => true
  end
end

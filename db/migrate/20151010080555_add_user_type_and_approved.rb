class AddUserTypeAndApproved < ActiveRecord::Migration
  def change
    add_column :drugs, :user_type, :string, :default => "default"
    add_column :drugs, :approved, :boolean, :default => true
  end
end

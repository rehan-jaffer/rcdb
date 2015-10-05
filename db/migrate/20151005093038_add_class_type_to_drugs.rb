class AddClassTypeToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :class_type, :string, :nil => false, :default => "drug"
  end
end

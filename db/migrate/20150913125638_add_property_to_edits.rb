class AddPropertyToEdits < ActiveRecord::Migration
  def change
    add_column :edits, :property, :string
  end
end

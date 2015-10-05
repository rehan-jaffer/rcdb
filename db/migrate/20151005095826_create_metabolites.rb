class CreateMetabolites < ActiveRecord::Migration
  def change
    create_table :metabolites do |t|
      t.integer :drug_id, :null => false
      t.string :name, :null => false
      t.boolean :active, :default => true, :null => false
      t.timestamps null: false
    end
  end
end

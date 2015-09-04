class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :link
      t.integer :drug_id
      t.string :description
      t.attachment
      t.timestamps null: false
    end
  end
end

class CreateEdits < ActiveRecord::Migration
  def change
    create_table :edits do |t|
      t.integer :drug_id
      t.text :content
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

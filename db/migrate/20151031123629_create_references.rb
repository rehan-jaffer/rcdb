class CreateReferences < ActiveRecord::Migration
  def change
    change_table :references do |t|
      t.string :title
      t.text :description
      t.timestamps null: false
    end
  end
end

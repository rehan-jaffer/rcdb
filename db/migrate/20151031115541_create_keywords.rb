class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :keyword, nil: false
      t.text :definition, nil: false
      t.timestamps null: false
    end
  end
end

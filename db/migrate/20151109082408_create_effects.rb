class CreateEffects < ActiveRecord::Migration
  def change
    create_table :effects do |t|
      t.string :description, nil: false
      t.integer :drug_id, nil: false
      t.boolean :intended, default: true
      t.integer :count, default: 0
      t.timestamps null: false
    end
  end
end

class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.string :country_code, nil: false
      t.boolean :legal, nil: false
      t.integer :drug_id, nil: false
      t.string :addition
      t.timestamps null: false
    end
  end
end

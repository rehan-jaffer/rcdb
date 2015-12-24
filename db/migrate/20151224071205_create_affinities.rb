class CreateAffinities < ActiveRecord::Migration
  def change
    create_table :affinities do |t|
      t.integer :drug_id, null: false
      t.string :receptor, null: false, length: 3
      t.decimal :value, null: false
      t.string :order, null: false
      t.timestamps null: false
    end
  end
end

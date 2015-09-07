class CreateCannabinoids < ActiveRecord::Migration
  def change
    create_table :cannabinoids do |t|
      t.integer :drug_id, :null => false
      t.string :drug_type, :null => false
      t.hstore :affinity
      t.string :full_name, :null => false
      t.text :description, :null => false
      t.hstore :fatalities
      t.hstore :papers
      t.hstore :articles
      t.timestamps null: false
    end
  end
end

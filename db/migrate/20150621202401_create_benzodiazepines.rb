class CreateBenzodiazepines < ActiveRecord::Migration
  def change
    create_table :benzodiazepines do |t|
      t.integer :drug_id
      t.string :drug_type
      t.integer :valium_equiv
      t.hstore :affinity

      t.timestamps null: false
    end
  end
end

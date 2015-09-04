class CreateDrugs < ActiveRecord::Migration
  def change
    enable_extension :hstore
    create_table :drugs do |t|
      t.string :primary_name
      t.string :other_names, :array => true
      t.text :description
      t.string :trade_names, :array => true
      t.integer :onset
      t.integer :half_life

      t.timestamps null: false
    end
  end
end

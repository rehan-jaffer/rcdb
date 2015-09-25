class CreatePsychedelics < ActiveRecord::Migration
  def change
    create_table :psychedelics do |t|
      t.string :classes, :array => true
      t.string :subtype
      t.timestamps null: false
    end
  end
end

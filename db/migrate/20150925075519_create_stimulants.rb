class CreateStimulants < ActiveRecord::Migration
  def change
    create_table :stimulants do |t|
      t.string :classes, array: true
      t.string :subtype
      t.timestamps null: false
    end
  end
end

class CreateDissociatives < ActiveRecord::Migration
  def change
    create_table :dissociatives do |t|
      t.string :subtype
      t.timestamps null: false
    end
  end
end

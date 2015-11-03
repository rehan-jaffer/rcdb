class CreateOpiates < ActiveRecord::Migration
  def change
    create_table :opiates do |t|
      t.timestamps null: false
    end
  end
end

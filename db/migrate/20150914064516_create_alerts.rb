class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.integer :priority
      t.string :title
      t.text :body
      t.integer :severity
      t.timestamps null: false
    end
  end
end

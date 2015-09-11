class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title, null: false
      t.text :report, null: false
      t.string :user_id, null: false
      t.timestamps null: false
    end
  end
end

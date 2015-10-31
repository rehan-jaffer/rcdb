class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, nil: false
      t.text :body, nil: false
      t.string :tags, as: :array
      t.string :author, default: "Administrator"
      t.timestamps null: false
    end
  end
end

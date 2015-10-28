class CreateEntries < ActiveRecord::Migration

  def change
    create_table :entries do |t|
      t.string :guid, nil: false
      t.string :title
      t.text :body
      t.string :source
      t.string :hash, unique: true
    end
  end

end

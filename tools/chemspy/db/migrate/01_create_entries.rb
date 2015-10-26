class CreateEntries < ActiveRecord::Migration

  def change
    create_table :entries do
      t.string :guid, nil: false
      t.string :title
      t.text :body
      t.string :source
    end
  end

end

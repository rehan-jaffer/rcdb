class AddPapersTable < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :title, :null => false
      t.integer :drug_id, :null => false, :unsigned => true
      t.string :link, :null => false
      t.text :abstract, :null => false
      t.integer :publication_date, :unsigned => true
    end
    remove_column :drugs, :papers
  end
end

class References < ActiveRecord::Migration
  def change
    create_table(:references) do |t|
      t.integer :drug_id, :null => false
      t.integer :reference_number, :null => false
      t.string :reference_url, :null => false
    end
  end
end

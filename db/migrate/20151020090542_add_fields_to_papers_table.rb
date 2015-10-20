class AddFieldsToPapersTable < ActiveRecord::Migration
  def change
    add_column :papers, :authors, :string, array: true
    add_column :papers, :pmid, :integer, unsigned: true
    add_column :papers, :journal, :string
  end
end

class AddPapersColumn < ActiveRecord::Migration
  def change
    remove_column :drugs, :papers
    add_column :drugs, :papers, :string
    add_column :drugs, :paper_feed, :string
  end
end

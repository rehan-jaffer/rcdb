class AddMoleculeDiagramToDrugs < ActiveRecord::Migration
  def change_table
    change_table :drugs do |t|
      t.attachment :molecule_diagram
    end
  end
end

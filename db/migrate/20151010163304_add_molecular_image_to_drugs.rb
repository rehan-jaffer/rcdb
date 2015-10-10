class AddMolecularImageToDrugs < ActiveRecord::Migration
  def change
    add_attachment :drugs, :molecule_image
    add_column :drugs, :molecule_image_source, :string
  end
end

class AddFullNameToBaseClass < ActiveRecord::Migration
  def change
    add_column :drugs, :full_name, :string
  end
end

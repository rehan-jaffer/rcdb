class ModifyEntries < ActiveRecord::Migration

  def change
    rename_column :entries, :hash, :hashed
  end

end

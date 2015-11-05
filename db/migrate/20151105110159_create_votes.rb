class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :drug_id, nil: false
      t.integer :quantity, nil: false
      t.string :property, nil: false
      t.string :ip_address, nil: false
      t.timestamps null: false
    end
  end
end

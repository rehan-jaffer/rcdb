class AddHashedMethodToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :hashed, :string, nil: false
  end
end

class AddRatingsToDrugs < ActiveRecord::Migration
  def change
    change_table :drugs do |t|
      t.decimal :harm_rating, :nil => false, :default => 5.0
      t.integer :harm_votes, :nil => false, :default => 0
      t.decimal :addiction_rating, :nil => false, :default => 5.0
      t.integer :addiction_votes, :nil => false, :default => 0
    end
  end
end

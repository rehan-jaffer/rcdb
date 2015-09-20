class AddStartDateToDrugsModel < ActiveRecord::Migration
  def change
    add_column :drugs, :start_date, :date
  end
end

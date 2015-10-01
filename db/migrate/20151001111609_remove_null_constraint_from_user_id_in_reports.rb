class RemoveNullConstraintFromUserIdInReports < ActiveRecord::Migration
  def change
    remove_column :reports, :user_id
    add_column :reports, :user_id, :integer, :null => false
  end
end

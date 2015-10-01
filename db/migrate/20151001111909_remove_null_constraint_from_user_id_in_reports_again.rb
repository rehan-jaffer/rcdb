class RemoveNullConstraintFromUserIdInReportsAgain < ActiveRecord::Migration
  def change
    change_column :reports, :user_id, :integer, :null => false
  end
end

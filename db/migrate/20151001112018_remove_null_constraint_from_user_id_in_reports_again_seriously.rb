class RemoveNullConstraintFromUserIdInReportsAgainSeriously < ActiveRecord::Migration
  def change
    change_column :reports, :user_id, :integer, :null => true
  end
end

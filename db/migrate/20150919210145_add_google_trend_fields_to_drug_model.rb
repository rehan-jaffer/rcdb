class AddGoogleTrendFieldsToDrugModel < ActiveRecord::Migration
  def change
    add_column :drugs, :google_trend_3_months, :integer, :unsigned => true
    add_column :drugs, :google_trend_6_months, :integer, :unsigned => true
    add_column :drugs, :google_trend_9_months, :integer, :unsigned => true
  end
end

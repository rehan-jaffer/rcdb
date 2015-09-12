class AddReportsFeedUrlToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :report_feed_url, :string
  end
end

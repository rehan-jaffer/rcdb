require './lib/analysis/google_trends'

namespace :drugs do
  desc "retrieve drugs and update inception date if null"
  task populate_data: :environment do
    
    @drugs = Drug.where(:start_date => nil).all

    @drugs.each do |drug|
      drug.start_date = GoogleTrends.obtain_start_date(drug.primary_name)
      sleep 1
      drug.trends_array = GoogleTrends.data_set(drug.primary_name)
      sleep 1
      drug.buy_trend_array = GoogleTrends.buy_data_set(drug.primary_name)
      drug.save
    end    

  end

end

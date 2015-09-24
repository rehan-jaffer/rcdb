require './lib/analysis/google_trends'

namespace :drugs do
  desc "retrieve drugs and update inception date if null"
  task set_inception_date: :environment do
    
    @drugs = Drug.where(:start_date => nil).all

    @drugs.each do |drug|
      drug.start_date = GoogleTrends.obtain_start_date(drug.primary_name)
      drug.save
    end    

  end

end

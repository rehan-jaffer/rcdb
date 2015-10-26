require 'open-uri'
require './lib/api/pubchem'

namespace :pubchem do
  desc "scrape the current data structure for each drug"
  task harvest: :environment do

    drugs = Drug.all

    drugs.each do |drug|

     unless drug.cid.nil? || drug.cid.empty?
       struct = PubChem.fetch_compound(drug.cid)
       drug.chemdata = struct
       drug.save!
     end

    end
    
    end

end

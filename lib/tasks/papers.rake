require 'rss'
require 'open-uri'

namespace :papers do
  desc "scrape the current feed for each drug"
  task scrape: :environment do

    drugs = Drug.all

    drugs.each do |drug|

    open(drug.paper_feed) do |rss|

      feed = RSS::Parser.parse(rss)
      feed.items.each do |item|
        paper = Paper.new
        paper.title = item.title
        paper.link = item.link
        paper.abstract = item.description
        paper.drug_id = drug.id
        paper.save
      end

    end

  end
    
  end

end

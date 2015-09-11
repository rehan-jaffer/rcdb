require 'rss'
require 'open-uri'

@benzo = Benzodiazepine.last

url = @benzo.paper_feed

open(url) do |rss|

  feed = RSS::Parser.parse(url)
  feed.items.each do |item|
    @paper = Paper.new
    @paper.title = item.title
    @paper.link = item.link
    @paper.abstract = item.description
    @paper.drug_id = @benzo.drug.id
    @paper.save
  end

end

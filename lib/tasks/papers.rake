require 'rss'
require 'open-uri'
require 'pp'

namespace :papers do
  desc "scrape the current feed for each drug"
  task scrape: :environment do

    drugs = Drug.all

    drugs.each do |drug|

     unless drug.paper_feed.nil? || drug.paper_feed.empty?
       open(drug.paper_feed) do |rss|

        feed = RSS::Parser.parse(rss)
        feed.items.each do |item|
          paper = Paper.new
          paper.title = item.title
          paper.link = item.link
          paper.abstract = item.description
          paper.drug_id = drug.id
          unless item.category.nil?
            paper.journal = item.category.to_s.gsub(/(<.?category>)/, "")
          end

          unless item.author.nil?
            paper.authors = item.author.gsub(/^ /, "").split(", ")
          end

          unless item.guid.nil?
            paper.pmid = item.guid.to_s.split(":")[1]
          end

          abstract = Nokogiri::HTML(paper.abstract)
          n = 0
          extract = {}
          components = []
          abstract.xpath("//p").each do |extract|
            components[n] = extract.inner_html
            n += 1
          end

          # if component size is 5, this extract contains an abstract
          if components.size == 5
            paper.abstract = components[3].gsub("<br>", "").gsub(/[\r\n\t]/, "").gsub(/^Abstract/, "")
          else
            paper.abstract = ""
          end

          journal_date = components[1].split(".")
          extract[:journal] = journal_date[0]
          extract[:date] = journal_date[1].split(";")[0]      
          paper.publication_date = extract[:date]
          puts paper.save!
        end

      end

    end
    end
    
    end

end

require 'open-uri'
require 'nokogiri'

url = "http://www.ecstasydata.org/"

doc = Nokogiri::HTML(open(url))

rows = doc.xpath("//tr")

rows.each do |row|

  puts row.xpath("td")
  puts ""

end

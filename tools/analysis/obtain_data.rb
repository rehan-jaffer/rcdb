require 'open-uri'
require 'nokogiri'
require 'json'

term = ARGV[0]

html = Nokogiri::HTML(open("http://www.google.com/trends/fetchComponent?hl=en-US&q=buy+#{term}&cmpt=q&tz=Etc/GMT&tz=Etc/GMT&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=330"))

js = html.xpath("//script")[4].inner_html

json_data = js.split("chartData = ")[1].split("; var htmlChart")[0]

puts JSON.parse(json_data)

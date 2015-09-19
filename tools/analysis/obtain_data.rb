require 'open-uri'
require 'nokogiri'
require 'rkelly'

term = ARGV[0]

html = Nokogiri::HTML(open("http://www.google.com/trends/fetchComponent?hl=en-US&q=buy+#{term}&cmpt=q&tz=Etc/GMT&tz=Etc/GMT&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=330"))

js = html.xpath("//script")[4].inner_html

parser = RKelly::Parser.new

ast = parser.parse(js)

ast.each do |node|
  if node.respond_to?(:name) && node.name == "chartData"
    node.to_a.each do |element|
      puts element.value if element.respond_to?(:name) && element.name == "chartData"
    end
  end
end


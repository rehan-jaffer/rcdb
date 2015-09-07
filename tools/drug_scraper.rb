require 'nokogiri'
require 'open-uri'

url = "http://chemicalwire.com/"

doc = Nokogiri::HTML(open(url))

@elements = doc.xpath("//ul[@id='nav']").map(&:inner_html)

@names = doc.xpath("//ul[@id='nav']//li/a").map(&:inner_text)

@names = @names.select { |element| !element.match(/(Blend)/i) }

puts @elements

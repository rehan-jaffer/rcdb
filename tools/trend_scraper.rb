require 'mechanize'
require 'open-uri'

drug_name = ARGV[0]

url = "https://www.google.com/trends/explore\#q=#{drug_name}"

puts url

a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

a.get(url) do |page|
  page.links.each do |link|
    puts link
  end
end

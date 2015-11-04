require 'csv'
require 'pp'

country_data = CSV.read("data/countries.csv")

countries_hash = {}

country_data.map do |entry|
  countries_hash[entry[10]] = entry[1]
end

COUNTRY_CODES = countries_hash.keys

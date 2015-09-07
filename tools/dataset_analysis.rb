require 'csv'
require 'gruff'

output_name = "#{ARGV[0]}.png"

google = CSV.read('report.csv', headers: true)


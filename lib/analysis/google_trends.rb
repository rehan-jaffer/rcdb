require 'open-uri'
require 'nokogiri'
require 'execjs'

module GoogleTrends

  def self.obtain_start_date(drug_name)

    data_set = obtain_data(drug_name)

    non_empty = data_set["rows"].keep_if do |entry|
      entry[3].to_i > 0
    end

    return non_empty.first[0]["v"]
 
  end

  def self.obtain_data(drug_name)

    html = Nokogiri::HTML(open("http://www.google.com/trends/fetchComponent?hl=en-US&q=#{drug_name}&cmpt=q&tz=Etc/GMT&tz=Etc/GMT&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=330"))
    js = html.xpath("//script")[4].inner_html
    json_data = js.split("chartData = ")[1].split("; var htmlChart")[0]
    data_set = ExecJS.eval(json_data)
    return data_set
  end

end

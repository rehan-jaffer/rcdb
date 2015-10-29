require 'open-uri'
require 'nokogiri'
require 'execjs'
require 'pp'

module GoogleTrends

  def self.data_set(drug_name)

    data_set = obtain_data(drug_name)

    numbers = data_set["rows"].map do |entry|
      entry[3]
    end

    return numbers

  end

  def self.buy_data_set(drug_name)

    data_set = obtain_data(drug_name, true)

    numbers = data_set["rows"].map do |entry|
      entry[3]
    end

    return numbers

  end

  def self.obtain_start_date(drug_name)

    data_set = obtain_data(drug_name)

    numbers = data_set["rows"].keep_if do |entry|
      entry[3].to_i > 0
    end

#    return numbers

    return numbers.first[0]["v"]
 
  end

  def self.obtain_data(drug_name, buy=false)

    if buy == false
      html = Nokogiri::HTML(open("http://www.google.com/trends/fetchComponent?hl=en-US&q=#{drug_name}&cmpt=q&tz=Etc/GMT&tz=Etc/GMT&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=330"))
    else
      html = Nokogiri::HTML(open("http://www.google.com/trends/fetchComponent?hl=en-US&q=buy+#{drug_name}&cmpt=q&tz=Etc/GMT&tz=Etc/GMT&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=330"))
    end
    js = html.xpath("//script")[4].inner_html
    json_data = js.split("chartData = ")[1].split("; var htmlChart")[0]
    data_set = ExecJS.eval(json_data)
    return data_set
  end

end

require './plugin'
require 'active_record'
require 'yaml'
require 'pp'

class Spider

  def new()
    load_plugins
  end

  def load_plugins

    @plugins = Dir.glob("plugins/*")  
    @loaded = []

    @plugins.each do |plugin_name|
      begin
        load plugin_name
        @loaded << process_plugin_name(plugin_name)
      rescue
        puts "Failed to load #{plugin_name}"
      end
    end

  end

  def process_plugin_name(plugin_name)
    components = plugin_name.split("/")
    name = components[1].split(".")[0].capitalize
    "#{name}Plugin"
  end

  def run
    @modules = []
    @loaded.each do |plugin|
      eval("@modules << #{plugin}.new")
    end
    @modules.each do |mod|
      mod.refresh
    end
  end

end

begin
  connection_details = YAML::load(File.open('config/database.yml'))
  ActiveRecord::Base.establish_connection(connection_details)
rescue StandardError => e
  puts "Could not connect to database: #{e.message}"
  exit
end

class Entry
end

spider = Spider.new
spider.load_plugins
spider.run

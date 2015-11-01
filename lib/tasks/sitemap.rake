require 'pp'

namespace :sitemap do
  task generate: :environment do
    base_url = "http://chemicalobserver.com/"
    classes = ["Benzodiazepine", "Stimulant", "Psychedelic", "Cannabinoid"]
    html = []
    classes.each do |class_type|
      entry = SitemapEntry.new
      entry.url = base_url + class_type.pluralize.downcase
      entry.lastmod = DateTime.now.strftime("%Y-%m-%d")
      html << entry
    end
    classes.each do |class_type|
      klass = Object.const_get(class_type)
      drugs = klass.send(:all)
      url_part = class_type.pluralize.downcase
      drugs.each do |drug|
        entry = SitemapEntry.new
        entry.url = "#{base_url}#{url_part}/#{drug.primary_name}"
        entry.lastmod = drug.updated_at.strftime("%Y-%m-%d")
        html << entry
      end
    end
    html_entries = html.map do |entry|
      entry.to_html
    end
    puts Sitemap.enclose(html_entries.join(""))
  end
end

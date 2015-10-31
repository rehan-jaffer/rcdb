class Sitemap

  def initialize

  end

  def add_entry(entry)
     output += "<url>\r\n"
     output += "<loc>#{entry.url}</loc>\r\n"
     output += "<lastmod>#{entry.lastmod}</lastmod>\r\n"
#        <changefreq>daily</changefreq>
#        <priority>0.8</priority>"
     if entry.image?
        output += "<image:image>"
        output += "<image:loc>#{entry.image_url}</image:loc>"
        output += "<image:caption>#{entry.image_description}</image:caption>"
        output += "</image:image>"
      end
    output += "</url>"
    output
  end

  def enclose(contents)
    return '<?xml version="1.0" encoding="utf-8"?>
     <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">'
     + contents +
     '</urlset>'

  end

end

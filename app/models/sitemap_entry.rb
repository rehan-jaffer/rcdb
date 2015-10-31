class SitemapEntry

  attr_reader :url, :lastmod, :image_url, :image_description, :image
  attr_writer :url, :lastmod, :image_url, :image_description, :image

  def to_html
    output = ""
    output += "<url>\r\n"
    output += "<loc>#{entry.url}</loc>\r\n"
    output += "<lastmod>#{entry.lastmod}</lastmod>\r\n"
    if image?
      output += "<image:image>"
      output += "<image:loc>#{entry.image_url}</image:loc>"
      output += "<image:caption>#{entry.image_description}</image:caption>"
      output += "</image:image>"
    end
    output += "</url>"
    output
  end

end

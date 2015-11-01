class SitemapEntry

  attr_reader :url, :lastmod, :image_url, :image_description, :image
  attr_writer :url, :lastmod, :image_url, :image_description, :image

  def to_html
    output = ""
    output += "<url>\r\n"
    output += "<loc>#{url}</loc>\r\n"
    output += "<lastmod>#{lastmod}</lastmod>\r\n"
    unless image.nil?
      output += "<image:image>"
      output += "<image:loc>#{image_url}</image:loc>"
      output += "<image:caption>#{image_description}</image:caption>"
      output += "</image:image>"
    end
    output += "</url>"
    output
  end

end

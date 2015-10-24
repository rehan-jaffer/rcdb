module Drug::CitationParser

  def parse!

    if self.description.nil?
      return ""
    end

    citations = []

    self.description.scan(/\[(http[^\[\]]*)\]/) do |match|
      citations << match
    end

    n = 0

    citations.each do |citation|

      n += 1
      link = citation[0]
      self.description = self.description.gsub("\[#{link}\]", "<a href='#citation-#{n}'>[#{n.to_s}]</a>")
      self.description += "\r\n<li>#{n.to_s}. <a href='#{link}' id='citation-#{n}'>#{link}</a></li>\r\n"

    end

    self.description
  end

end

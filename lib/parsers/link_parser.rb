module LinkParser

  def self.parse(text)

    citations = []

    text.scan(/\[(http[^\[\]]*)\]/) do |match|
      citations << match
    end

    n = 0

    citations.each do |citation|

      n += 1
      link = citation[0]
      text = text.gsub("\[#{link}\]", "<a href='#citation-#{n}'>[#{n.to_s}]</a>")
      text += "\r\n<li>#{n.to_s}. <a href='#{link}' id='citation-#{n}'>#{link}</a></li>\r\n"

    end
    text
  end

end

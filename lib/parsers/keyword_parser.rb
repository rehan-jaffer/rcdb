module KeywordParser

  def self.scan(text)

    stripped_text = text.gsub(/[^\w\d ]/, "").downcase
    tokens = stripped_text.split(" ")
    keywords = Keyword.all
    new_text = text
    keywords.each do |keyword|
      if tokens.include?(keyword.keyword)
        new_text = text.gsub(" #{keyword.keyword} ", " " + tooltip(keyword.keyword, keyword.definition) + " ")
      end
    end
    new_text
  end

  def self.tooltip(word, text)
    %Q(<a data-toggle="tooltip" data-placement="top" class="keyword" title="#{text.html_safe}">#{word.capitalize}</a>).html_safe
  end

end

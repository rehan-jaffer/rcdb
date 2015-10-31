module TextHelper

  def citation_parser(text)
    LinkParser.parse(text)
  end

end

module Drug::CitationParser

  def parse!

    if self.description.nil?
      self.description = ""
    end

    self.description = LinkParser.parse(self.description)

    self.description
  end

end

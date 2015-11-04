require 'rails_helper'

RSpec.describe KeywordParser do

  before(:all) do
    keyword = Keyword.new
    keyword.keyword = "test"
    keyword.definition = "test text"
    keyword.save
  end

  describe "parser functionality" do

    before(:all) do
      @text_properties = 'data-toggle="tooltip" data-placement="top" class="keyword"'
    end

    it "parses sample text as required in the default case" do
      text = "this is a test of the parser"
      new_text = KeywordParser.scan(text)
      expect(new_text).to eq(%Q(this is a <a #{@text_properties} title="test text">test</a> of the parser))
    end

    it "does not parse the term if it is simply part of a word" do
      text = "this is testing the in-text scanning"
      new_text = KeywordParser.scan(text)
      expect(new_text).to eq(%Q(this is testing the in-text scanning))
    end

    it "replaces the text with the case sensitive replacement" do
      text = "this is a Test "
      new_text = KeywordParser.scan(text)
      expect(new_text).to eq(%Q(this is a <a #{@text_properties} title="test text">Test</a> of the parser))
    end

  end

end

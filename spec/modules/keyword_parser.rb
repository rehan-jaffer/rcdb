require 'rails_helper'

RSpec.describe KeywordParser do

  before(:all) do
    keyword = Keyword.new
    keyword.keyword = "test"
    keyword.definition = "test text"
    keyword.save
  end

  describe "parser functionality" do

    it "parses the text as required" do
      text = "this is a test of the parser"
      new_text = KeywordParser.scan(text)
      expect(new_text).to eq('this is a <a data-toggle="tooltip" data-placement="top" title="test text" class="keyword">Test</a> of the parser')
    end

  end

end

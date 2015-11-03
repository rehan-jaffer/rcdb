require 'rails_helper'

RSpec.describe Drug, type: :model do

  it "is capable of parsing its content for citation links, and enumerating them as HTML via #to_html" do
    
    @drug = Drug.new
    @drug.primary_name = "Sample Drug"
    @drug.description = "This is a test [http://www.test.com/]"
    expect(@drug.to_html).to eq "This is a test <a href='#citation-1'>[1]</a><h4 class='citation-header'>+ Citations</h4>\r\n<ul class='citation-listing'>\r\n\r\n<li>1. <a href='http://www.test.com/' id='citation-1'>http://www.test.com/</a></li>\r\n</ul>\r\n"

  end

end

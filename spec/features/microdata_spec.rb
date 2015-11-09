describe "Test Microdata for Drug pages" do

  before(:all) do
    @cannabinoid = FactoryGirl.build(:cannabinoid)
    path = "/cannabinoids/JWH-018"
    visit path
    @microdata = Microdata::Document.new(page.body, path).extract_items
  end

  describe "loads page and test microdata" do

    it "has the top-level type of drug" do

    end

  end

end

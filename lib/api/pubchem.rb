require 'open-uri'
require 'json'

class PubChem

  def self.fetch_3d_image(cid)
    lookup_url = "https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/cid/#{cid}/PNG?record_type=3d&image_size=large"
    result = {}
    open(lookup_url) do |file|
      result = file.read
    end
    result
  end

  def self.fetch_compound(cid)
    lookup_url = "http://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/cid/#{cid}/JSON/"
    result = {}
    open(lookup_url) do |file|
      result = JSON.parse(file.read)
    end
    result
  end

end

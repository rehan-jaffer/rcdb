module Drug::DrugProperties

   def affinity_accessors(receptors)
      receptors.each do |subtype|
        store_accessor :affinity, subtype
      end
    end  

end

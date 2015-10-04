module Drug::DrugProperties

   def affinity_accessors(receptors)
      receptors.each do |subtype|
        store_accessor :affinity, subtype
      end
    end  

   def onset_accessors
     [:onset_oral, :onset_iv, :onset_insufflation, :onset_rectal, :onset_sublingual, :onset_inhaled].each do |onset_type|
      store_accessor :onset, onset_type
     end
   end

end

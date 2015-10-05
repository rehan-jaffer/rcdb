module Drug::DrugProperties

   def self.extended(class_name)
     class_name.before_save :set_drug_class
     class_name.class_eval do
       def set_drug_class
         self.class_type = self.class.to_s.downcase
       end
     end
   end


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

   def halflife_accessors
     [:halflife_oral, :halflife_iv, :halflife_insufflation, :halflife_rectal, :halflife_sublingual, :halflife_inhaled].each do |halflife_type|
      store_accessor :half_life, halflife_type
     end
   end

   # refactor to methodize these in order to avoid having to respecify

   def onset_types
     [:onset_oral, :onset_iv, :onset_insufflation, :onset_rectal, :onset_sublingual, :onset_inhaled]
   end

   def halflife_types
     [:halflife_oral, :halflife_iv, :halflife_insufflation, :halflife_rectal, :halflife_sublingual, :halflife_inhaled]
   end

end

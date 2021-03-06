class Pathologicalurin
  include Mongoid::Document
  include Sunspot::Mongoid2
  field :proteinuria, type: String
  field :creatinuria, type: String
  field :ratio, type: String
  field :ematuria, type: String
 
  
  embedded_in :microrna_patient, :inverse_of => :pathologicalurins
   
   searchable do
    text :proteinuria     
end
end

class Unit < ActiveRecord::Base
  belongs_to :program
  belongs_to :district
  belongs_to :charter, :class_name => 'Organization', :foreign_key => 'organization_id'
  
  has_one :division, :through => :district
  has_one :council, :through => :division
  
  def name
    self.program.unit_type + " " + self.number.to_s
  end
end

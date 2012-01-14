class Person < ActiveRecord::Base
  has_one :oa_membership
  has_one :lodge, :through => :oa_membership
  has_one :chapter, :through => :oa_membership
  
  def name
    self.first_name + ' ' + self.last_name
  end
end

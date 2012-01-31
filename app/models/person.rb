class Person < ActiveRecord::Base
  has_one :oa_membership
  has_one :lodge, :through => :oa_membership
  has_one :chapter, :through => :oa_membership

  has_secure_password
  validates_presence_of :password, :on => :create
  
  def name
    self.first_name + ' ' + self.last_name
  end
end

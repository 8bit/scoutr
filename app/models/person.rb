class Person < ActiveRecord::Base
  has_one :oa_membership
  has_one :lodge, :through => :oa_membership
  has_one :chapter, :through => :oa_membership

  has_many :memberships, :foreign_key => 'member_id'
  has_many :units, :through => :memberships, :source => :group, :source_type => 'Unit'
  has_many :districts, :through => :memberships, :source => :group, :source_type => 'District'
  has_many :councils, :through => :memberships, :source => :group, :source_type => 'Council'

  has_secure_password
  validates_presence_of :password, :on => :create
  
  def name
    self.first_name + ' ' + self.last_name
  end
end

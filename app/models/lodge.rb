class Lodge < ActiveRecord::Base
  belongs_to :council
  has_many :chapters

  has_many :oa_memberships
  has_many :members, :through => :oa_memberships, :foreign_key => :person_id, :class_name => 'Person'
  
  validates_presence_of :name
end

class Chapter < ActiveRecord::Base
  belongs_to :district
  belongs_to :lodge
  has_many :oa_memberships
  has_many :members, :through => :oa_memberships, :source => :person, :class_name => 'Person'
  validates_presence_of :name, :lodge
end

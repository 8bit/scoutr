class Council < ActiveRecord::Base
  has_many :divisions
  has_many :districts, :through => :divisions
  
  has_one :lodge
  
  has_many :memberships, :as => group
  has_many :members, :through => :memberships
  
  validates_presence_of :name
end

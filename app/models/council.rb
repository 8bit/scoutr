class Council < ActiveRecord::Base
  has_many :divisions
  has_many :districts, :through => :divisions
  
  has_one :lodge
  
  validates_presence_of :name
end

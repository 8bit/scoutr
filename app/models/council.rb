class Council < ActiveRecord::Base
  has_many :divisions
  has_many :districts, :through => :divisions
  
  validates_presence_of :name
end

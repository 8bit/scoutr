class Council < ActiveRecord::Base
  has_many :divisions
  has_many :districts, :through => :divisions
end

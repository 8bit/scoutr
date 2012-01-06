class District < ActiveRecord::Base
  belongs_to :division
  has_one :council, :through => :division
  
  has_many :roundtables
end

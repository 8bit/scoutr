class District < ActiveRecord::Base
  belongs_to :division
  has_one :council, :through => :division
  
  has_many :roundtables
  
  def parent
    self.division
  end
  
end

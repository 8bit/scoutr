class District < ActiveRecord::Base
  belongs_to :division
  has_one :council, :through => :division
  
  has_many :roundtables
  has_one :chapter
  validates_presence_of :name
  
  def parent
    self.division
  end
  
end

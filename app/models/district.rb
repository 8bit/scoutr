class District < ActiveRecord::Base
  belongs_to :division
  has_one :council, :through => :division
  
  has_many :roundtables
  has_one :chapter
  
  has_many :memberships, :as => group
  has_many :members, :through => :memberships

  validates_presence_of :name
  
  def parent
    self.division
  end
  
end

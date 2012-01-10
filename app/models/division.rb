class Division < ActiveRecord::Base
  belongs_to :council
  has_many :districts

  validates_presence_of :name
  
  def parent
    self.council
  end
  
end

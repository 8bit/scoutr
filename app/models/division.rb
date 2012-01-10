class Division < ActiveRecord::Base
  belongs_to :council
  has_many :districts
  
  def parent
    self.council
  end
  
end

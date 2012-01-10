class Roundtable < ActiveRecord::Base
  belongs_to :district
  belongs_to :program
  
  validates_presence_of :happened_on, :num_units, :num_individuals
  validates :email, :presence => true, :email_format => true
  
  default_scope :order => 'happened_on DESC'
  
  def parent
    self.district
  end
  
  def happened_on=(arg)
    if arg.is_a?(String)
      self[:happened_on] = Date.strptime(arg, "%m-%d-%Y")
    else #just push it through
      self[:happened_on] = arg
    end
  end
end

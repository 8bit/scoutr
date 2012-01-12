class Program < ActiveRecord::Base
  has_many :units
  has_many :roundtables

  validates_presence_of :name

end

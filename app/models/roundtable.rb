class Roundtable < ActiveRecord::Base
  belongs_to :district
  belongs_to :program
  
  validates_presence_of :num_units, :num_individuals
  validates :email, :presence => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
end

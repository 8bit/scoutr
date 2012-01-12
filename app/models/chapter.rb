class Chapter < ActiveRecord::Base
  belongs_to :district
  belongs_to :lodge
  
  validates_presence_of :name, :lodge
end

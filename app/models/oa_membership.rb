class OA_Membership < ActiveRecord::Base
  belongs_to :person
  belongs_to :lodge
  belongs_to :chapter
  
  #validation
  validates_presence_of :person, :lodge
end

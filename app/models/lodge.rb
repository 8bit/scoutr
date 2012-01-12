class Lodge < ActiveRecord::Base
  belongs_to :council
  has_many :chapters
  
  validates_presence_of :name
end

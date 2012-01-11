class Lodge < ActiveRecord::Base
  belongs_to :council
  has_many :chapters
end

class Chapter < ActiveRecord::Base
  belongs_to :district
  belongs_to :lodge
end

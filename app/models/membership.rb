class Membership < ActiveRecord::Base
  belongs_to :member, :class_name => 'Person'
  belongs_to :group, :polymorphic => true
end

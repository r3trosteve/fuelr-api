class Slot < ActiveRecord::Base
  belongs_to :product
  has_many :slots
end

class ChassisMatch < ActiveRecord::Base
  belongs_to :chassis
  belongs_to :match
end

class PilotMatch < ActiveRecord::Base

  belongs_to :pilot
  belongs_to :match

end

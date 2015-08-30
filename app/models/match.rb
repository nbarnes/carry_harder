class Match < ActiveRecord::Base

  require 'carrierwave/processing/mini_magick'

  has_many :screenshots
  accepts_nested_attributes_for :screenshots
  has_many :pilot_matches
  has_many :chassis_matches

  def map_name
  end

  def game_mode
  end

  def battle_duration
  end

  def screenshot
    return screenshots[0]
  end

end

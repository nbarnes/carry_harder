class Match < ActiveRecord::Base

  require 'tesseract'
  require 'carrierwave/processing/mini_magick'

  has_many :screenshots
  accepts_nested_attributes_for :screenshots

  def map_name
    magickimage = MiniMagick::Image.open(screenshot.image.map_name_slice.path)
    return ocr_engine.text_for(magickimage).strip
  end

  def game_mode
    magickimage = MiniMagick::Image.open(screenshot.image.game_mode_slice.path)
    return ocr_engine.text_for(magickimage).strip
  end

  def battle_duration
    magickimage = MiniMagick::Image.open(screenshot.image.battle_duration_slice.path)
    return ocr_engine.text_for(magickimage).strip
  end

  def screenshot
    return screenshots[0]
  end

  private
    def ocr_engine
      return Tesseract::Engine.new do |e|
        e.language  = :eng
        e.blacklist = '|'
      end
    end

end

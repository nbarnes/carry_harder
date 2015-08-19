class Match < ActiveRecord::Base

  require 'tesseract'

  has_many :screenshots
  accepts_nested_attributes_for :screenshots

  def map_name
    # @magickimage.write("public/#{@image.store_path}map_name_slice.jpg")
    return ocr_engine.text_for(screenshots[0].map_name_slice).strip
  end

  def game_mode
    # @magickimage.write("public/#{@image.store_path}game_mode_slice.jpg")
    return ocr_engine.text_for(screenshots[0].game_mode_slice).strip
  end

  def battle_duration
    # @magickimage.write("public/#{@image.store_path}battle_duration_slice.jpg")
    return ocr_engine.text_for(screenshots[0].battle_duration_slice).strip
  end

  private
    def ocr_engine
      return Tesseract::Engine.new do |e|
        e.language  = :eng
        e.blacklist = '|'
      end
    end

end

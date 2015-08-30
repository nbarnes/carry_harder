
class ScoreboardParser
  require 'tesseract'

  def map_name
    img = slice_screenshot_image(magickimage, 135, 17, 460, 107)
    return ocr_engine(img)
  end

  def game_mode
    img = slice_screenshot_image(magickimage, 95, 17, 660, 107)
    return ocr_engine(img)
  end

  def battle_duration
    img = slice_screenshot_image(magickimage, 32, 17, 835, 107)
    return ocr_engine(img)
  end

  def player_a_team_b
    # take absolute offsets for red or blue
    # add relative offsets for player index in team
    # get slice
  end

  def team_scores
    blue_score = 0
    red_score = 0
    return { blue_score: blue_score, red_score: red_score }
  end

  private
    def ocr_engine
      return Tesseract::Engine.new do |e|
        e.language  = :eng
        e.blacklist = '|'
      end
    end

end

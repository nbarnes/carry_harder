require 'test_helper'

feature 'match_creation' do

  scenario 'match created with screenshot and images' do
    screenshot = Screenshot.create!(image: fixture_file_upload('images/dire_wolf_1k.jpg', 'image/jpg'))
    ::MiniMagick::Image.open(screenshot.image.file.file)[:dimensions].must_equal [1024, 768]
    ::MiniMagick::Image.open(screenshot.image.map_name_slice.file.file)[:dimensions].must_equal [525, 51]
    ::MiniMagick::Image.open(screenshot.image.game_mode_slice.file.file)[:dimensions].must_equal [285, 51]
    ::MiniMagick::Image.open(screenshot.image.battle_duration_slice.file.file)[:dimensions].must_equal [126, 51]

    FileUtils.rm_rf("#{Rails.root}/test/fixtures/images/uploads", secure: true)

  end

end

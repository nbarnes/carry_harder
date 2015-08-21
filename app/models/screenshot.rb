class Screenshot < ActiveRecord::Base

  mount_uploader :image, ScreenshotImageUploader
  belongs_to :match

  # def map_name_slice
  #   magickimage = MiniMagick::Image.open(image.path)
  #   size = '135' << 'x' << '17'
  #   offset = '+' << '460' '+' << '107'
  #   mogrify_arg = "#{size}#{offset}"
  #   return magickimage.crop(mogrify_arg)
  # end

  # def game_mode_slice
  #   magickimage = MiniMagick::Image.open(image.path)
  #   size = '95' << 'x' << '17'
  #   offset = '+' << '660' '+' << '107'
  #   mogrify_arg = "#{size}#{offset}"
  #   return magickimage.crop(mogrify_arg)
  # end

  # def battle_duration_slice
  #   magickimage = MiniMagick::Image.open(image.path)
  #   size = '32' << 'x' << '17'
  #   offset = '+' << '835' '+' << '107'
  #   mogrify_arg = "#{size}#{offset}"
  #   cropped_image = magickimage.crop(mogrify_arg)
  #   return cropped_image
  # end

  # def slices
  #   slices = []
  #   slices.push([map_name_slice, 'map_name_slice'])
  #   slices.push([game_mode_slice, 'game_mode_slice'])
  #   slices.push([battle_duration_slice, 'battle_duration_slice'])
  # end

  # def save_image_slices
  #   the_slices = slices
  #   the_slices.each do |slice|
  #     slice[0].write "public/#{image.store_path}#{slice[1]}.jpg"
  #   end
  # end

end

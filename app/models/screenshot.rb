class Screenshot < ActiveRecord::Base

  mount_uploader :image, ScreenshotImageUploader
  belongs_to :match

  def get_slice(height, width, x, y)
    size = "#{height}x#{width}"
    offset = "+#{x}+#{y}"
    mogrify_arg = "#{size}#{offset}"
    image.crop(mogrify_arg)
  end

end

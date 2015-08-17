class Screenshot < ActiveRecord::Base

  mount_uploader :image, ScreenshotImageUploader

end

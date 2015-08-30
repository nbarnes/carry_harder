# encoding: utf-8

class ScreenshotImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  # include CarrierWave::Uploader::MagicMimeWhitelist

  # Storage settings in uploader take precedence over storage settings
  # in a specific test, so directing the storage to :file when in env.test
  # is needed here.
  # Need to chance this to fog storage when we move to AWS cloud storage
  # for images
  storage :file if Rails.env.test?

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # # Override it to your needs.
  # # By default it returns nil and the validator allows every
  # # content-type.
  # def whitelist_mime_type_pattern
  #   /image\//
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

  version :thumbnail do
    process resize_to_fit: [200, 200]
  end

  version :map_name_slice do
    size = '175' << 'x' << '17'
    offset = '+' << '420' '+' << '107'
    mogrify_arg = "#{size}#{offset}"
    process slice: mogrify_arg
  end

  version :game_mode_slice do
    size = '95' << 'x' << '17'
    offset = '+' << '660' '+' << '107'
    mogrify_arg = "#{size}#{offset}"
    process slice: mogrify_arg
  end

  version :battle_duration_slice do
    size = '42' << 'x' << '17'
    offset = '+' << '825' '+' << '107'
    mogrify_arg = "#{size}#{offset}"
    process slice: mogrify_arg
  end

  private

    def slice(mogrify_arg)
      manipulate! do |img|
        img.crop(mogrify_arg)
        img.scale '300%'
      end
    end

end

class PhotoUploader < CarrierWave::Uploader::Base

  # Remove everything else
  include Cloudinary::CarrierWave
end

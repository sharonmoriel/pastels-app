class PhotoUploader < CarrierWave::Uploader::Base

  # Remove everything else
  mount_uploader :photo, PhotoUploader
end

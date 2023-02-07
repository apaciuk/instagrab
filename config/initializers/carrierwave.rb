CarrierWave.configure do |config|
config.fog_credentials = {
    :url                   => ENV['CLOUDINARY_URL'],
    :cloud_name             => ENV['CLOUDINARY_CLOUD_NAME'],
    :api_key               => ENV['CLOUDINARY_API_KEY'],
    :api_secret             => ENV['CLOUDINARY_API_SECRET']
    
}
config.storage = :fog
config.permissions = 0666
config.cache_dir = "#{Rails.root}/tmp/uploads"
config.fog_directory  = ENV['CLOUDINARY_CLOUD_NAME']
config.fog_public     = true
config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
end 
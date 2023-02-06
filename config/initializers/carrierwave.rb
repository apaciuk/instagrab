Carrierwave.configure do |config|
config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],                        # required
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS'],                        # required
    :region                 => 'us-east-1',  
} # optional, defaults to 'us-east-1' 
config.storage = :fog
config.permissions = 0666
config.cache_dir = "#{Rails.root}/tmp/"
config.fog_directory  = ENV['AWS_BUCKET']                          # required
config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
end  # optional, defaults to {}
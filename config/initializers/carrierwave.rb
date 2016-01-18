CarrierWave.configure do |config|
  # config.fog_provider = 'fog/aws'                                   # required
  config.fog_credentials = {
    provider:              'AWS',                                      # required
    aws_access_key_id:     'zzzz',                     # required
    aws_secret_access_key: 'xxxxx', # required
    region:                'us-west-2',                  # optional, defaults to 'us-east-1'
    # host:                  's3.example.com',             # optional, defaults to nil
    # endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.fog_directory  = 'cccc'                                  # required
	config.fog_public     = false 
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
  config.storage = :fog
end
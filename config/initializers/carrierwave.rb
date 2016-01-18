CarrierWave.configure do |config|
	config.fog_credentials = {
		:provider               => 'AWS'
		:aws_access_key_id      => ENV['S3_KEY']
		:aws_secret_acccess_ket => ENV['S3_SECRET']
		:region                 => ENV['S3_REGION']
	}
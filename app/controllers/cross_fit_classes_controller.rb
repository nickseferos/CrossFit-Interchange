class CrossFitClassesController < ApplicationController
	def wicf
		
	end

	def cf_schedule
# 		site_ids = { 'int' => -99 }
# 		source_credentials = { 'SourceName' => 'CFInterchange', 'Password' => '+nOZzglQN9EwuARqjJKxlq7sPQg=', 'SiteIDs' => site_ids }
# 		user_credentials = { 'Username' => 'Siteowner', 'Password' => 'demo1234', 'SiteIDs' => site_ids }

# 		require 'savon'
# 		#Create Savon client using default settings
# 		http_client = Savon.client(wsdl: "https://api.mindbodyonline.com/0_5/ClassService.asmx?WSDL")
		
# 		#Create request and package it for the call
# 		http_request = { 'SourceCredentials' => source_credentials, 'UserCredentials' => user_credentials  }
# 		params = { 'Request' => http_request }
		
# 		#Run the call and store the results
# 		result = http_client.call(:get_classes) do
# 			soap.header = params
# 		end
		
# 		@class_name = Array.new
# 		@class_description = Array.new
# 		@class_date = Array.new
		
# 		#Parse results for use in the view
# 		result[:get_classes_response][:get_classes_result][:classes][:class].each do |one_class|
# 			@class_name << one_class[:class_description][:name]
# 			@class_description << one_class[:class_description][:description]
# 			@class_date << "#{one_class[:start_date_time].strftime("%B %d, %Y %l:%M%P")} - #{one_class[:end_date_time].strftime("%B %d, %Y %l:%M%P")}"
		

# 		require 'savon'
# 		client = Savon.client(wsdl:'https://api.mindbodyonline.com/0_5/ClassService.asmx?wsdl')
# site_ids = { 'int' => -99 }
# 		source_credentials = { 'SourceName' => 'CFInterchange', 'Password' => '+nOZzglQN9EwuARqjJKxlq7sPQg=', 'SiteIDs' => site_ids }
# 		user_credentials = { 'Username' => 'Siteowner', 'Password' => 'demo1234', 'SiteIDs' => site_ids }

# 		client.call(:get_classes, message:{
# 			source_credentials: {
# 				'SourceName' => 'CFInterchange', 
# 				'Password' => ''
# 				'SiteIDs' => '-99'
# 			}
# 			site_ids
# 			})


		# end
    require 'savon'
  	client = Savon.client(wsdl: "https://api.mindbodyonline.com/0_5/ClassService.asmx?wsdl")
    site_ids = { 'int' => -99 }
    source_credentials = { "SourceName" => "CFInterchange", "Password" => "+nOZzglQN9EwuARqjJKxlq7sPQg=", "SiteIDs" => site_ids }
    user_credentials = { "Username" => "Siteowner", "Password" => "demo1234", "SiteIDs" => site_ids }
    
    response = client.call(:authenticate) do
      message source_credentials, user_credentials
      convert_request_keys_to :camelcase
    end
    response = client.request :get_classes

	end

	def cf_pricing
		
	end

	def wod
  #   Tumblr.configure do |config|
  #     config.consumer_key = "tWncHp5Q4yob4R9TwF88HznAUUnULGh1vXFRLZc7m3mplvM29t"
  #     config.consumer_secret = "4kflJ6cWMpHon52ltcoMrQpJaN4a1oZ6pF5JvFE5MA22jALwFj"
  #     config.oauth_token = "FDaOUtMmrDPlahKzOnITFXLf6j4fldqgidzh3jLFLQQvx5ztRc"
  #     config.oauth_token_secret = "3SP963UHJfBBxooskbtxk6RpRVUKoTucNkc5WHtweeV5YSj0Pg"
  #   end

  #   @clients = Tumblr::Client.new
		# @clients.posts("crossfitinterchange.tumblr.com", :limit => 10)
    client = Tumblr::Client.new :consumer_key => 'tWncHp5Q4yob4R9TwF88HznAUUnULGh1vXFRLZc7m3mplvM29t'

    # Make the request
    @wods = client.posts 'crossfitinterchange.tumblr.com', :limit => 14
  end
	
end

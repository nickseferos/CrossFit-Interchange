class PagesController < ApplicationController
	def index
    # @key = 'tWncHp5Q4yob4R9TwF88HznAUUnULGh1vXFRLZc7m3mplvM29t'
    # @secret = '4kflJ6cWMpHon52ltcoMrQpJaN4a1oZ6pF5JvFE5MA22jALwFj'
    # @oauth_token = 'FDaOUtMmrDPlahKzOnITFXLf6j4fldqgidzh3jLFLQQvx5ztRc'
    # @oauth_token_secret = '3SP963UHJfBBxooskbtxk6RpRVUKoTucNkc5WHtweeV5YSj0Pg'

    # @myClient = Tumblr::Client.new(
    #   :consumer_key => @key,
    #   :consumer_secret => @secret,
    #   :oauth_token => @oauth_token,
    #   :oauth_token_secret => @oauth_token_secret
    # )
    Tumblr.configure do |config|
      config.consumer_key = "tWncHp5Q4yob4R9TwF88HznAUUnULGh1vXFRLZc7m3mplvM29t"
      config.consumer_secret = "4kflJ6cWMpHon52ltcoMrQpJaN4a1oZ6pF5JvFE5MA22jALwFj"
      config.oauth_token = "FDaOUtMmrDPlahKzOnITFXLf6j4fldqgidzh3jLFLQQvx5ztRc"
      config.oauth_token_secret = "3SP963UHJfBBxooskbtxk6RpRVUKoTucNkc5WHtweeV5YSj0Pg"
    end

    client = Tumblr::Client.new
    #   :consumer_key => 'tWncHp5Q4yob4R9TwF88HznAUUnULGh1vXFRLZc7m3mplvM29t',
    #   :consumer_secret => '4kflJ6cWMpHon52ltcoMrQpJaN4a1oZ6pF5JvFE5MA22jALwFj',
    #   :oauth_token => 'FDaOUtMmrDPlahKzOnITFXLf6j4fldqgidzh3jLFLQQvx5ztRc',
    #   :oauth_token_secret => '3SP963UHJfBBxooskbtxk6RpRVUKoTucNkc5WHtweeV5YSj0Pg'
    # })

    @posts = client.posts("crossfitinterchange.tumblr.com")
    # @posts = Kaminari.paginate_array(@posts["posts"]).page(params[:page]).per(10)

    # # Photography posts only (other types follow the same pattern)
    # @photoPosts = @myClient.posts("YOURTUMBLR.tumblr.com", 
    #                               :limit => 5, 
    #                               :type => "photo")
    # @photoPosts = @photoPosts["posts"]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
	end

	def about_us
		
	end

	def child_care
		
	end

	def contact
		
	end

	def free_trial
		
	end

	def staff
		
	end
end

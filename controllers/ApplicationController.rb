class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require()


	# DB connection
	ActiveRecord::Base.establish_connection(
	    :adapter => 'postgresql',
	    :database => 'wine_merchant_cellar'
	  )


	# middleware here
	use Rack::MethodOverride
	set :method_override, true


	# template routes here
	set :views, File.expand_path('../../views', __FILE__)
	set :public_dir, File.expand_path('../../public', __FILE__)


	# basic site routes
	get '/' do
		"Welcome to the Wine Shoppe"
	end

	get '/test' do
		"Welcome to test mode, friend"

		binding.pry
	end
end
















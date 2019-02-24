class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require()


	# DB connection
	ActiveRecord::Base.establish_connection(
	    :adapter => 'postgresql',
	    :database => 'wine-merchant-cellar'
	  )


	# middleware here
	use Rack::MethodOverride # as in express, we "use" middleware
	set :method_override, true


	# template routes here
	set :views, File.expand_path('../../views', __FILE__)
	set :public_dir, File.expand_path('../../public', __FILE__)


	# basec site routes
	get '/' do
		"Welcome to the Wine Shoppe"
	end

end
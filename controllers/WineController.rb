class WineController < ApplicationController


	# test route
	get '/test' do
		"You have reached test route, Pedro"
	end

	# index route
	get '/' do
		"I, PMM, have reached the index route!"
		@wines = Wine.all.sort
		erb :wine_index
	end

	# new route
	get '/new' do
		erb :wine_new
	end

	# create/ POST route
	post '/' do
		puts "You have hit the POST route, congrats"
		wine = Wine.new

		wine.name = params[:name]
		wine.winemaker = params[:winemaker]
		wine.region = params[:region]
		wine.style  = params[:style]
		wine.year = params[:year]

# 		CREATE TABLE wines(
		#   id SERIAL PRIMARY KEY,
		#   name VARCHAR(255),
		#   winemaker VARCHAR(255),
		#   region VARCHAR(255),
		#   style VARCHAR(255),
		#   year SMALLINT
		# );

    	wine.save

    	redirect '/wines'

	end

end
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





end
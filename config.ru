require 'sinatra/base'

#controllers
require './controllers/ApplicationController'
require './controllers/WineController'

# models
require './models/WineModel'

# routes for controllers
map '/' do
	run ApplicationController
end

map '/wines' do
	run WineController
end




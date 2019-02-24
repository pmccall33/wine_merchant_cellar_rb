require 'sinatra/base'

#controllers
require './controllers/ApplicationController'

# models
require './models/WineModel'

# routes for controllers
map '/' do
	run ApplicationController
end

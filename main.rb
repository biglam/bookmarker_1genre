require 'pry-byebug'
require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pg'

require_relative 'models/db_base'
require_relative 'models/genre'
require_relative 'controllers/genres_controller'

# require_relative 'models/db_base'
# require_relative 'models/category'


get '/' do
  erb :home
end

# add genre with site?
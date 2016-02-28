require 'pry'
require 'grape'
require 'json'
require 'data_mapper'
require 'jsonapi-serializers'
require_relative './models'
require_relative './serializers'
require_relative './api/keys'
require_relative './setup_db'

class App < Grape::API
  format :txt
  mount Api::Keys
end

$LOAD_PATH.unshift(File.expand_path(__dir__))

require 'bundler'
require 'config_factory'
ConfigFactory.create(ENV['RACK_ENV']).run

class App < Grape::API
  content_type :jsonapi, 'application/vnd.api+json'
  format :jsonapi
  mount Api::Keys
end

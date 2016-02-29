root = File.expand_path(__dir__)
$LOAD_PATH.unshift(root)

require 'bundler'
require 'grape'
require 'json'
require 'data_mapper'
require 'jsonapi-serializers'

%w(models serializers api).each do |code_dir|
  Dir[File.join(root, 'app', code_dir, '*.rb')].each { |file| require file }
end
Dir[File.join(root, 'config', '*.rb')].each { |file| require file }
require 'config_factory'
ConfigFactory.create(ENV['RACK_ENV']).run

class App < Grape::API
  format :json
  mount Api::Keys
end

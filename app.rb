$LOAD_PATH.unshift(File.expand_path(__dir__))

require 'config_factory'
ConfigFactory.create(ENV['RACK_ENV']).run

class App < Grape::API
  content_type :jsonapi, 'application/vnd.api+json'
  format :jsonapi

  helpers do
    def serialize(data)
      case env['api.format']
      when :jsonapi
        Serializers::JsonApiSerializer.new(data).serialize.to_json
      else
        Serializers::NullSerializer.new(data).serialize.to_json
      end
    end
  end

  mount Api::Keys
end

$LOAD_PATH.unshift(File.expand_path(__dir__))

require 'config_factory'
ConfigFactory.create(ENV['RACK_ENV']).run

class App < Grape::API
  content_type :jsonapi, 'application/vnd.api+json'
  format :jsonapi

  helpers do
    def serializer_fac(data)
      case env['api.format']
      when :jsonapi
        JsonApiSerializer.new(data)
      else
        NullSerializer.new(data)
      end
    end
  end

  mount Api::Keys
end

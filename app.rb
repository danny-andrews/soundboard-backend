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
        Serializers::JsonApiSerializer.new(data).serialize
      else
        Serializers::NullSerializer.new(data).serialize
      end
    end

    def execute_and_render(command_class, data)
      resp = command_class.new(data).execute
      status resp.code
      serialize(resp.body)
    end
  end

  mount Api::Keys
  mount Api::ShortcutCommands
  mount Api::Boards
  mount Api::Configs
  mount Api::Djs
end

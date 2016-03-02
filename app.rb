require_relative './config_factory'

ConfigFactory.create(ENV['RACK_ENV']).run

class App < Grape::API
  content_type :jsonapi, 'application/vnd.api+json'
  format :jsonapi

  helpers do
    def serialize(data)
      Serializers::JsonApiSerializer.new(data).serialize
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

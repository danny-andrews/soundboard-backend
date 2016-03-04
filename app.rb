require_relative './config_factory'
require 'grape'

config = ConfigFactory.create(ENV['RACK_ENV'])
config.run
$config_vals = config.config_vals

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

    def current_user
      jwt_payload = headers['Bearer']
      return nil unless jwt_payload
      token_data = JWTAuthScheme.new($config_vals.secret_key)
        .decode(jwt_payload)
      return nil unless token_data['auid']
      @current_user ||= Dj.first_or_create_from_auid(token_data['auid'], stage_name: token_data['name'])
    end

    def authenticate!
      error!('401 Unauthorized', 401) unless current_user
    end
  end

  params do
    requires :auid, type: String
  end
  post '/login' do
    token_data = JWTAuthScheme.new($config_vals.secret_key)
      .encode({auid: params[:auid], name: params[:name]})
    serialize(Session.new(token: token_data))
  end

  before do
    authenticate!
  end

  mount Api::Keys
  mount Api::ShortcutCommands
  mount Api::Boards
  mount Api::Configs
  mount Api::Djs
end

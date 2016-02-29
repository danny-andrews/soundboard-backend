module Api
  class Keys < Grape::API
    resource :keys do
      get '/' do
        JSONAPI::Serializer.serialize(Key.all.to_a, is_collection: true).to_json
      end
    end
  end
end

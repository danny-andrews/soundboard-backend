module Serializers
  class JsonApiSerializer < Struct.new(:data)
    def serialize(opts = {})
      return data if data.is_a?(String)

      if data.is_a?(Array)
        opts[:is_collection] = true
      else
        opts[:is_collection] = false
        opts[:skip_collection_check] = true
      end
      JSONAPI::Serializer.serialize(data, opts).to_json
    end
  end
end

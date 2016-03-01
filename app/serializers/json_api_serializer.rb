module Serializers
  class JsonApiSerializer < Struct.new(:data)
    def serialize(opts = {})
      if data.respond_to?(:each)
        opts[:is_collection] = true
      else
        opts[:is_collection] = false
        opts[:skip_collection_check] = true
      end
      JSONAPI::Serializer.serialize(data, opts)
    end
  end
end

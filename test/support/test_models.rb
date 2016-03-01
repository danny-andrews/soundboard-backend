class TestModelSerializer
  include JSONAPI::Serializer

  attribute :id
end

class TestModel
  include ActiveAttr::Model

  attribute :id
end

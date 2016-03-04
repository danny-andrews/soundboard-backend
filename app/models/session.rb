class Session
  include ActiveAttr::Model

  attribute :id, type: Integer, default: 1
  attribute :token, type: String, required: true
end

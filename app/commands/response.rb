class Response
  include ActiveAttr::Model

  attribute :body
  attribute :code

  validates_presence_of :body, :code
end

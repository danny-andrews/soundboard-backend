require_relative './base_serializer'

class SessionSerializer
  include JSONAPI::Serializer

  def type
    object.class.name.demodulize.dasherize
  end

  attributes :token
end

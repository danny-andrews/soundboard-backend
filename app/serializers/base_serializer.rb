class BaseSerializer
  include JSONAPI::Serializer

  def type
    object.class.name.demodulize.dasherize
  end

  attribute :id
end

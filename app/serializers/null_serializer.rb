module Serializers
  class NullSerializer < Struct.new(:data)
    def serialize(*)
      data
    end
  end
end

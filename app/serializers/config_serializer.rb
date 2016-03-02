require_relative './base_serializer'

class ConfigSerializer < BaseSerializer
  has_one :dj
  has_many :shortcuts
end

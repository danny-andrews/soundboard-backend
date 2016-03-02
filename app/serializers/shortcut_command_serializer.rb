require_relative './base_serializer'

class ShortcutCommandSerializer < BaseSerializer
  attribute :name

  has_many :shortcuts
end

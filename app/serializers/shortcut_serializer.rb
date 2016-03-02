require_relative './base_serializer'

class ShortcutSerializer < BaseSerializer
  attribute :meta

  has_one :config
  has_one :key
  has_one :shortcut_command
  has_one :sound
end

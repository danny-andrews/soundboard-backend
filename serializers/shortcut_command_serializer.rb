class ShortcutCommandSerializer < BaseSerializer
  attribute :name

  has_many :shortcuts
end

class KeySerializer < BaseSerializer
  attribute :code

  has_many :shortcuts
end

require_relative './base_serializer'

class DjSerializer < BaseSerializer
  attribute :stage_name

  has_one :config
  has_many :boards
end

class DjSerializer < BaseSerializer
  attribute :stage_name

  has_one :config
  has_many :boards
end

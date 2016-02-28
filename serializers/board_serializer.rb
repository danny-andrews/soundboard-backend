class BoardSerializer < BaseSerializer
  attributes :name, :description

  has_one :dj
  has_many :sounds
end

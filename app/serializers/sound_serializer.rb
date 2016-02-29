class SoundSerializer < BaseSerializer
  attributes :display_name, :filename, :uuid, :play_count

  has_many :boards
end

class Sound
  include DataMapper::Resource

  property :id, Serial, required: true
  property :display_name, String, required: true
  property :filename, String, required: true
  property :uuid, String, required: true, unique: true
  property :play_count, Integer, required: true, default: 0, set: 0..Float::INFINITY

  has n, :boards, through: :board_sounds
end

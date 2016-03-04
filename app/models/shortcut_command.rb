class ShortcutCommand
  VALID_NAMES = {KILL_ALL_SOUNDS: 1, PLAY_SOUND: 2}.freeze

  include DataMapper::Resource

  property :id, Serial, required: true
  property :name, String, required: true, set: VALID_NAMES.keys.map(&:to_s)

  has n, :shortcuts
end

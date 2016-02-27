class ShortcutCommand
  VALID_NAMES = {
    KILL_ALL_SOUNDS: 1,
    PLAY_SOUND: 2
  }
  include DataMapper::Resource

  property :id, Serial, required: true
  property :name, String, required: true, set: VALID_NAMES.values

  has n, :shortcuts
end

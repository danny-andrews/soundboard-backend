class Shortcut
  include DataMapper::Resource

  property :id, Serial, required: true
  property :meta, Object, default: {}
  validates_with_block :meta do
    meta.is_a?(Hash) ? true : [false, 'Meta must be of type "Hash"']
  end
  validates_with_block :sound_id do
    shortcut_command_id != ShortcutCommand::VALID_NAMES[:PLAY_SOUND] ||
      !sound_id.nil?
  end

  belongs_to :config
  belongs_to :key
  belongs_to :shortcut_command
  belongs_to :sound, required: false
end

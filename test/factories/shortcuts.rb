FactoryGirl.define do
  factory :shortcut do
    sequence :id
    key_id 1
    shortcut_command_id ShortcutCommand::VALID_NAMES[:KILL_ALL_SOUNDS]
    config
  end
end

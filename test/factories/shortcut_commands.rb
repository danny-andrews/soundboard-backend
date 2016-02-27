FactoryGirl.define do
  factory :shortcut_command do
    sequence :id
    name ShortcutCommand::VALID_NAMES[:kill_all_sounds]
  end
end

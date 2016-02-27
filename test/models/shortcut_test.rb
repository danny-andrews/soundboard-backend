require 'pry'
require_relative '../test_setup'

class TestShortcut < Minitest::Test
  def test_factory
    assert FactoryGirl.build(:shortcut).valid?
  end

  def test_it_defaults_meta_field_to_empty_object
    assert_equal ({}), FactoryGirl.build_stubbed(:shortcut).meta
  end

  def test_it_validates_meta_field_is_a_hash_type
    refute FactoryGirl.build_stubbed(:shortcut, meta: 1).valid?
    assert FactoryGirl.build_stubbed(:shortcut, meta: {id: 3}).valid?
  end

  def test_validates_presence_of_sound_id_when_command_is_play_sound
    shortcut = FactoryGirl.build_stubbed(
      :shortcut,
      shortcut_command_id: ShortcutCommand::VALID_NAMES[:PLAY_SOUND],
      sound_id: nil
    )
    refute shortcut.valid?
  end
end

require_relative '../test_setup'

class ShortcutCommandTest < Minitest::Test
  def test_validates_existence_of_name
    refute FactoryGirl.build_stubbed(:shortcut_command, name: nil).valid?
  end

  def test_validates_name_is_valid
    refute FactoryGirl.build_stubbed(:shortcut_command, name: 'invalid').valid?
  end
end

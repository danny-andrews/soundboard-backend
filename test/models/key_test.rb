require_relative '../test_setup'

class TestKey < Minitest::Test
  def test_factory
    assert FactoryGirl.build_stubbed(:key).valid?
  end

  def test_validates_code_is_valid
    refute FactoryGirl.build_stubbed(:key, code: 'Not valid key code').valid?
  end

  def test_validates_code_exists
    refute FactoryGirl.build_stubbed(:key, code: nil).valid?
  end
end

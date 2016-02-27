require_relative '../test_setup'

class TestBoard < Minitest::Test
  def test_factory
    assert FactoryGirl.build(:board).valid?
  end

  def test_it_validates_presence_of_name
    refute FactoryGirl.build_stubbed(:board, name: nil).valid?
  end
end

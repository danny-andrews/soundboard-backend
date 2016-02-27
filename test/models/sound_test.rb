require_relative '../test_setup'

class TestSound < Minitest::Test
  def test_factory
    assert FactoryGirl.build(:sound).valid?
  end

  def test_validates_presence_of_display_name
    refute FactoryGirl.build_stubbed(:sound, display_name: nil).valid?
  end

  def test_validates_presence_of_filename
    refute FactoryGirl.build_stubbed(:sound, filename: nil).valid?
  end

  def test_validates_presence_of_uuid
    refute FactoryGirl.build_stubbed(:sound, uuid: nil).valid?
  end

  def test_validates_uniquness_of_uuid
    FactoryGirl.create(:sound, uuid: 1)
    refute FactoryGirl.build_stubbed(:sound, uuid: 1).valid?
  end

  def test_validates_presence_of_play_count
    refute FactoryGirl.build_stubbed(:sound, play_count: nil).valid?
  end

  def test_validates_play_count_is_greater_than_or_equal_to_zero
    refute FactoryGirl.build_stubbed(:sound, play_count: -3).valid?
  end

  def test_validates_play_count_defaults_to_0
    assert_equal 0, FactoryGirl.build_stubbed(:sound).play_count
  end
end

require_relative '../test_setup'

class DjTest < Minitest::Test
  def test_factory
    assert FactoryGirl.build(:dj).valid?
  end

  def test_validates_existence_of_stage_name
    refute FactoryGirl.build_stubbed(:dj, stage_name: nil).valid?
  end
end

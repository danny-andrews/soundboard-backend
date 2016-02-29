require_relative '../test_setup'

class ConfigTest < Minitest::Test
  def test_factory
    assert FactoryGirl.build(:config).valid?
  end

  def test_validates_presence_of_dj_id
    refute FactoryGirl.build(:config, dj: nil).valid?
  end
end

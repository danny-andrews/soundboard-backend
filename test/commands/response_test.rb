require_relative '../test_setup'

class ResponseTest < Minitest::Test
  def test_it_requires_body
    refute FactoryGirl.build(:response, body: nil).valid?
  end

  def test_it_requires_code
    refute FactoryGirl.build(:response, code: nil).valid?
  end
end

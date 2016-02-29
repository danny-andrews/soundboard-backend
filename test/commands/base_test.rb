require_relative '../test_setup'

class BaseTest < Minitest::Test
  def test_it_ignores_non_whitelisted_attributes
    attributes = Commands::Base.new(not_whitelisted: true).attributes
    refute attributes.key?('not_whitelisted')
  end
end

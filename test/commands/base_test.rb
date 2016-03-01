require_relative '../test_setup'

module Commands
  class BaseTest < Minitest::Test
    def test_it_ignores_non_whitelisted_attributes
      attributes = Base.new(not_whitelisted: true).attributes
      refute attributes.key?('not_whitelisted')
    end
  end
end

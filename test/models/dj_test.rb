require 'minitest/autorun'
require_relative '../test_setup'

class TestDj < Minitest::Test
  def test_dj_does_something
    assert Dj.new(id: 1, stage_name: 'bob')
  end
end

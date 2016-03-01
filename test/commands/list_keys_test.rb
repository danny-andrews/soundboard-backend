require_relative '../test_setup'

module Commands
  class ListKeysTest < Minitest::Test
    attr_reader :subject

    def setup
      @subject = ListKeys.new
      subject.execute
    end

    def test_execute_sets_response_body_to_all_keys
      assert_equal subject.response.body, Key.all.to_a
    end

    def test_execute_sets_response_code_to_200
      assert_equal subject.response.code, 200
    end
  end
end

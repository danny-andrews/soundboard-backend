require_relative '../test_setup'

module Api
  class ShortcutCommandsTest < Minitest::Test
    include Rack::Test::Methods
    include CommandHelpers

    def app
      App
    end

    def test_list_calls_list_keys_command
      assert_executes_command(Commands::ListShortcutCommands) do
        get '/shortcut-commands'
      end
    end
  end
end

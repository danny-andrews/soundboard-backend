module Api
  class ShortcutCommands < Grape::API
    resource 'shortcut-commands' do
      get '/' do
        serialize(Commands::ListShortcutCommands.new.execute.body)
      end
    end
  end
end

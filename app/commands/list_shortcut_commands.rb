module Commands
  class ListShortcutCommands < Commands::Base
    def execute
      success(ShortcutCommand.all.to_a)
    end
  end
end

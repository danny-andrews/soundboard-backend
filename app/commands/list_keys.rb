require_relative './base'

module Commands
  class ListKeys < Commands::Base
    def execute
      success(Key.all.to_a)
    end
  end
end

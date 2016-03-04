require_relative './base'

module Commands
  class ListBoards < Commands::Base

    attribute :current_user, required: true

    def execute
      success(current_user.boards.to_a)
    end
  end
end

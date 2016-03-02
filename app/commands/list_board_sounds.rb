require_relative './base'

module Commands
  class ListBoardSounds < Commands::Base
    attribute :id, type: Integer, required: true

    def execute
      board = Board.get(id)

      if board
        success(board.sounds)
      else
        not_found
      end
    end
  end
end

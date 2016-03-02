require_relative './base'

module Commands
  class ShowBoard < Commands::Base
    attribute :id, type: Integer, required: true

    def execute
      board = Board.get(id)
      if board
        success(board)
      else
        not_found
      end
    end
  end
end

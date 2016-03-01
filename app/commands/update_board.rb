module Commands
  class UpdateBoard < Commands::Base
    attribute :id, type: Integer, required: true
    attribute :name
    attribute :description
    attribute :sounds, default: []

    def execute
      board_attrs = filtered_params
      board = find_board
      return not_found unless board
      existing_sounds = Sound.all(id: sounds)
      return invalid(["Sounds has value which doesn't exist"]) unless
        existing_sounds.length == sounds.length
      board_attrs = board_attrs.merge(sounds: existing_sounds)

      if board_attrs.empty? || board.update(board_attrs)
        success(board)
      else
        invalid(board.errors)
      end
    end

    private

    def find_board
      Board.get(id)
    end

    def filtered_params
      attributes.select do |key, value|
        !value.nil? && key != 'id' && key != 'sounds'
      end
    end
  end
end

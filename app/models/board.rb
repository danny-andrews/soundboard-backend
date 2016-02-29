class Board
  include DataMapper::Resource

  property :id, Serial, required: true
  property :name, String, required: true
  property :description, String

  belongs_to :dj
  has n, :sounds, through: :board_sounds
end

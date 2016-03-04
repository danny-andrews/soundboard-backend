class Dj
  include DataMapper::Resource

  property :id, Serial, required: true
  property :auid, String, required: true, unique: true
  property :stage_name, String, required: true

  has 1, :config
  has n, :boards

  def self.first_or_create_from_auid(auid, addl_attributes = {})
    dj = Dj.first_or_new(auid: auid)
    return dj if dj.saved?

    dj.attributes = addl_attributes
    board = Board.new(name: 'Board1', sounds: Sound.all, dj_id: id)
    dj.boards << board
    dj.save
    dj
  end
end

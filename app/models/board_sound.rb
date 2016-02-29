class BoardSound
  include DataMapper::Resource

  belongs_to :sound, key: true
  belongs_to :board, key: true
end

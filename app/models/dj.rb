class Dj
  include DataMapper::Resource

  property :id, Serial, required: true
  property :stage_name, String, required: true

  has 1, :config
  has n, :boards
end

class Config
  include DataMapper::Resource

  property :id, Serial, required: true

  belongs_to :dj
  has n, :shortcuts
end

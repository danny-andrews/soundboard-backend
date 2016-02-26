class Dj
  include DataMapper::Resource

  property :id, Serial
  property :stage_name, String
end

DataMapper.finalize

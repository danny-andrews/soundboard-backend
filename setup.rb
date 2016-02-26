require 'data_mapper'
require_relative './models'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, 'postgres://skypal:imypal@localhost/soundbored')
DataMapper.auto_migrate!

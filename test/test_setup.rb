require 'data_mapper'
require 'minitest'
require_relative '../models'

DataMapper.setup(:default, 'sqlite::memory:')

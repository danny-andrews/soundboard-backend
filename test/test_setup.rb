require 'data_mapper'
require 'dm-transactions'
require 'minitest'
require 'minitest/autorun'
require 'factory_girl'
require_relative '../models'

DataMapper.setup(:default, 'sqlite::memory:')
DataMapper.auto_migrate!
require_relative '../seeds'

FactoryGirl.find_definitions

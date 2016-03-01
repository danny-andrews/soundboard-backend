$LOAD_PATH.unshift(File.expand_path(__dir__))

require 'minitest'
require 'minitest/autorun'
require 'minitest/mock'
require 'factory_girl'
require 'rack/test'
require_relative '../app'
Dir[File.join('test', 'support', '**', '*.rb')].each { |file| require file }

FactoryGirl.find_definitions

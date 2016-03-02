require 'minitest/autorun'
require 'minitest/mock'
require 'rack/test'

require_relative '../app'
Dir[File.join(__dir__, 'support', '**', '*.rb')].each do |file|
  require file
end

FactoryGirl.find_definitions

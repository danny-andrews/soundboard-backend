require_relative './app'

map '/assets' do
  run Rack::Directory.new('./node_modules')
end

map '/public' do
  run Rack::Directory.new('./public')
end

use Rack::Static, urls: ['/sounds'], root: 'public'

run App

require_relative './base'

module Configuration
  class Development < Base
    def setup_db
      DataMapper::Logger.new($stdout, :debug)
      super
    end
  end
end

module Configuration
  class Development < Base
    def setup_db
      DataMapper::Logger.new($stdout, :debug)
    end
  end
end

module Configuration
  class Test < Base
    def setup_db
      super
      DataMapper.auto_migrate!
    end
  end
end

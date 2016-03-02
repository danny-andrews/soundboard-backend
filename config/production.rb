require_relative './base'

module Configuration
  class Production < Base
    def setup_db
      super
    end
  end
end

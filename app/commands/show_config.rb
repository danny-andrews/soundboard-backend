require_relative './base'

module Commands
  class ShowConfig < Commands::Base
    attribute :id, type: Integer, required: true

    def execute
      config = Config.get(id)
      if config
        success(config)
      else
        not_found
      end
    end
  end
end

module Commands
  class Base
    include ActiveAttr::Model

    attr_reader :response
  end
end

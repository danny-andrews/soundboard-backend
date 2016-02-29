module Commands
  class ListKeys < Commands::Base
    def execute
      @response = Response.new(body: Key.all.to_a, code: 200)
    end
  end
end

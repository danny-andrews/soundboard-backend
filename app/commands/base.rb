module Commands
  class Base
    include ActiveAttr::Model

    protected

    def success(body)
      Response.new(body: body, code: 200)
    end

    def not_found
      Response.new(
        body: {errors: [{status: 404, title: 'Not found'}]}.to_json,
        code: 404
      )
    end

    def invalid(errors)
      Response.new(
        body: {
          errors: errors.map { |msg| {status: 422, title: msg} }
        }.to_json,
        code: 422
      )
    end
  end
end

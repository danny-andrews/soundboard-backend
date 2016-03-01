module CommandHelpers
  def assert_executes_command(command_klass)
    command_inst = Minitest::Mock.new
    resp = Commands::Response.new(body: TestModel.new(id: 1), code: 200)
    command_inst.expect :execute, resp
    command_klass.stub :new, command_inst do
      yield
      command_inst.verify
    end
  end
end

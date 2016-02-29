class ConfigFactory
  def self.create(env)
    case env
    when 'production'
      Configuration::Production.new(env)
    when 'development'
      Configuration::Development.new(env)
    when 'test'
      Configuration::Test.new(env)
    else
      Configuration::Development.new(env)
    end
  end
end

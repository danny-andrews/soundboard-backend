require 'yaml'
require 'ostruct'
require 'bundler'

module Configuration
  ENVIRONMENTS = %w(test development production).freeze
  REQUIRED_CONFIG_KEYS = ['database_url'].freeze
  CONFIG_PATH = File.join(__dir__, 'config.yaml')

  class Base
    attr_reader :config

    def initialize(env)
      Bundler.require(:default, env.to_sym)
      Dir[File.join(__dir__, '../app', '**', '*.rb')].each do |file|
        require file
      end
      DataMapper.finalize
      unless ENVIRONMENTS.include?(env)
        raise StandardError, 'RACK_ENV environment variable must be set to ' \
          "one of the following [#{ENVIRONMENTS.join(', ')}]"
      end
      raw = parse_config_file(CONFIG_PATH)[env]
      missing_keys = REQUIRED_CONFIG_KEYS.select { |key| !raw[key] }
      unless missing_keys.empty?
        raise StandardError, 'Missing required config key(s) ' \
          "['#{missing_keys.join(', ')}']"
      end
      @config = OpenStruct.new(raw)
    end

    def run
      setup_db
    end

    protected

    def setup_db
      DataMapper.setup(:default, config.database_url)
    end

    private

    def parse_config_file(path)
      YAML.load(ERB.new(File.read(path)).result)
    end
  end
end

require 'yaml'
require 'ostruct'

module Configuration
  ENVIRONMENTS = %w(test development production).freeze
  REQUIRED_CONFIG_KEYS = ['database_url'].freeze

  class Base
    attr_reader :config

    def initialize(env)
      unless ENVIRONMENTS.include?(env)
        raise StandardError, 'RACK_ENV environment variable must be set to ' \
          "one of the following [#{ENVIRONMENTS.join(', ')}]"
      end
      raw = YAML.load_file(File.join(__dir__, 'config.yaml'))[env]
      missing_keys = REQUIRED_CONFIG_KEYS.select { |key| !raw.key?(key) }
      unless missing_keys.empty?
        raise StandardError, 'Missing required config key(s) ' \
          "[#{missing_keys.join(', ')}]"
      end
      @config = OpenStruct.new(raw)
    end

    def run
      setup_db
    end

    private

    def setup_db
      DataMapper.setup(:default, config.database_url)
    end
  end
end

require_relative './base'

module Commands
  class UpdateDj < Commands::Base
    attribute :id, type: Integer, required: true
    attribute :stage_name

    def execute
      dj = find_dj
      return not_found unless dj

      dj_attrs = filtered_params

      if dj_attrs.empty? || dj.update(dj_attrs)
        success(dj)
      else
        invalid(dj.errors)
      end
    end

    private

    def find_dj
      Dj.get(id)
    end

    def filtered_params
      attributes.reject { |key, value| value.nil? || key == 'id' }
    end
  end
end

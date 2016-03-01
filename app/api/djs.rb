module Api
  class Djs < Grape::API
    resource :djs do
      params do
        requires :id, type: Integer
        requires :dj, type: Hash do
          optional :stage_name, type: String
        end
      end
      route_param :id do
        put do
          attrs = declared(params)[:dj].merge(id: params[:id])
          execute_and_render(Commands::UpdateDj, attrs)
        end
      end
    end
  end
end

module Api
  class Configs < Grape::API
    resource :configs do
      params do
        requires :id, type: Integer
      end
      route_param :id do
        get do
          execute_and_render(Commands::ShowConfig, id: params[:id])
        end
      end
    end
  end
end

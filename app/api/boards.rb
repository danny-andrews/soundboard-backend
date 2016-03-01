module Api
  class Boards < Grape::API
    resource :boards do
      params do
        requires :id, type: Integer
      end
      route_param :id do
        get do
          execute_and_render(Commands::ShowBoard, id: params[:id])
        end

        get '/sounds' do
          execute_and_render(Commands::ListBoardSounds, id: params[:id])
        end
      end

      params do
        requires :id, type: Integer
        requires :board, type: Hash do
          optional :name, type: String
          optional :description, type: String
          optional :sounds, type: Array
        end
      end
      route_param :id do
        put do
          attrs = declared(params)[:board].merge(id: params[:id])
          execute_and_render(Commands::UpdateBoard, attrs)
        end
      end
    end
  end
end

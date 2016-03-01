module Api
  class Keys < Grape::API
    resource :keys do
      get '/' do
        serialize(Commands::ListKeys.new.execute.body)
      end
    end
  end
end

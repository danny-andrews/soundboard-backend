module Api
  class Keys < Grape::API
    resource :keys do
      get '/' do
        'heyo'
      end
    end
  end
end

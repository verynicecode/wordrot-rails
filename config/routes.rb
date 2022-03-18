Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get :killswitch, to: 'killswitch#show'
    end
  end
end

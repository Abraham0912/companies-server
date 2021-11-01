Rails.application.routes.draw do  
  namespace :api do
    namespace :v1 do
      resources :companies
      get '/companies2', to: 'companies#destroy2'
    end
  end
end

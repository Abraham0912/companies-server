Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :companies
      resources :policies
      resources :telecommunication_securities
      resources :acquisition_development_maintenances
    end
  end
end

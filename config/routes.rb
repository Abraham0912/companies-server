Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :companies
      resources :policies
      resources :telecommunication_securities
    end
  end
end

Rails.application.routes.draw do
  get 'signin/create'
  namespace :api do 
    namespace :v1 do
      resources :currencies
    end
  end
end

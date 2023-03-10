Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post 'api/v1/auth/login', to: 'authentication#login'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :vacations
    end
  end
end

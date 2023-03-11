Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post 'api/v1/auth/login', to: 'authentication#login'
  post 'api/v1/data_upload', to: 'data_upload#upload'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :vacations
    end
  end
end

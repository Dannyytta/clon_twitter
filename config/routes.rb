Rails.application.routes.draw do
  get 'pages/index'
  resources :twitters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "twitters#index"
end

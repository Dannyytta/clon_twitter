Rails.application.routes.draw do
  get 'pages/index'

  resources :twitters do
    member do
      get 'buscador'
    end
    collection do
      get "search"
    end
  end 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "twitters#index"
end

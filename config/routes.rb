Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :storerooms do
    member do
       get :toggle_status
    end
  end
  root "storerooms#index"

end

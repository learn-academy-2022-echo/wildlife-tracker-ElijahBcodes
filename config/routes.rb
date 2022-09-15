Rails.application.routes.draw do
  resources :sightings
  resources :animals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'sightings' => 'sighting#index', as: 'exercises'
  # post 'sightings' => 'sighting#create'
  # get 'sightings' => 'sighting#new' as: 'new_sighting'
  # Defines the root path route ("/")
  # root "articles#index"
end

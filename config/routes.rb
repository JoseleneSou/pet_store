Rails.application.routes.draw do
  get '/pets', to: 'pets#index' 
  get '/pets/new', to: 'pets#new'
  post '/pets', to: 'pets#create'
  get '/pet/:id', to: 'pets#show', as: :pet
  get '/contacts', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'
  
  # TODO: remove example route
  get '/banana', to: 'pets#banana'

  root "home#index"
end

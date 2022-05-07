Rails.application.routes.draw do
  get '/pets', to: 'pets#index'
  get '/pets/new', to: 'pets#new'
  post '/pets', to: 'pets#create'
  get '/pet/:id', to: 'pets#show'
  
  # TODO: remove example route
  get '/banana', to: 'pets#banana'

  root "home#index"
end

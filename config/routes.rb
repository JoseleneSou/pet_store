Rails.application.routes.draw do
  get '/show', to: 'pets#show'
  get '/pets', to: 'pets#index'
  get '/pets/new', to: 'pets#new'
  post '/pets', to: 'pets#create'
  
  # TODO: remove example route
  get '/banana', to: 'pets#banana'

  root "home#index"
end
